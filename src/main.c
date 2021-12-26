/* 
 *   File main.c
 * Author Denis Bisson
 *   Date 2021-12-20
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xc.h>
#include "pic18f1330.h"

#pragma config OSC = INTIO2 //Internal oscillator, port function on RA6 and RA7
#pragma config PWRT = ON //PWRT enabled
#pragma config BOR = BOHW //Brown-out Reset enabled in hardware only (SBOREN is disabled)
#pragma config WDT = ON // WDT enabled
#pragma config WDTPS = 1024 //1:1024. Cela donne 4.096 secondes pour le watchdog
#pragma config PWMPIN = OFF //PWM outputs disabled upon Reset
#pragma config MCLRE = ON //MCLR pin enabled, RA5 input pin disabled
#pragma config STVREN = ON //Reset on stack overflow/underflow enabled
#pragma config DEBUG = OFF //Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
#pragma config CP0 = OFF //Block 0 is not code-protected
#pragma config CP1 = OFF //Block 1 is not code-protected
#pragma config CPB = OFF //Boot Block is not code-protected
#pragma config CPD = OFF //Data EEPROM is not code-protected
#pragma config WRT0 = OFF //Block 0 is not write-protected
#pragma config WRT1 = OFF //Block 1 is not write-protected
#pragma config WRTC = OFF //Configuration registers are not write-protected
#pragma config WRTB = OFF //Boot Block is not write-protected
#pragma config WRTD = OFF //Data EEPROM is not write-protected
#pragma config EBTR0 = OFF //Block 0 is not protected from table reads executed in other blocks
#pragma config EBTR1 = OFF //Block 1 is not protected from table reads executed in other blocks
#pragma config EBTRB = OFF //Boot Block is not protected from table reads executed in other blocks

/* Timing avec mon laptop. */
/* La version de MPLAB/XC8 sur le PC de la job visiblement g�n�re de quoi plus slow. */

//#define T500MS 1760
//#define LIMITFLASH 3000
//#define LIMITWAITBUT 3000
//#define MINIMALSEEBUT 50

#define T500MS 1148
//#define LIMITFLASH 1957
#define LIMITWAITBUT 1957
#define MINIMALSEEBUT 50

unsigned int iLimiteFlash = 10;

typedef enum
{
  FLASHSTATE_WAITTOTURNON,
  FLASHSTATE_WAITTOTURNOFF
} FlashTaskState_t;

typedef struct
{
  FlashTaskState_t State;
  unsigned int ctr;
} AppFlashData_t;

typedef enum
{
  LEVELWATCHERSTATE_NOTINIT = 0,
  LEVELWATCHERSTATE_WAITREQUESTOFILL,
  LEVELWATCHERSTATE_WAITCOMPLETEFILL,
  LEVELWATCHERSTATE_EMERGENCYSTOPFILL
} LevelWatcherTaskState_t;

typedef struct
{
  LevelWatcherTaskState_t CurrentWatcherTaskState;
  int StableReadingCounter;
  int TimeOutCounter;
} AppLevelWatcherData_t;

AppFlashData_t AppFlashData;
AppLevelWatcherData_t AppLevelWatcherData;

void InitializeHardware(void)
{
  LATAbits.LATA0 = 0;
  TRISAbits.TRISA0 = 1; //We don't turn on the relay, we set our pin in input.

  LATAbits.LATA1 = 0; //We're ready to drive a "0" to turn on RUN LED, we will control simply with data direction.
  TRISAbits.TRISA1 = 1; //We don't turn on the led, we set our pin in input.

  LATAbits.LATA4 = 0; //We're ready to drive a "0" to turn on VALVE, we will control simply with data direction.
  TRISAbits.TRISA4 = 1; //We don't turn on the relay yet, we set our pin in input.

  TRISBbits.RB0 = 1; //Set input for sensor LOW WATER
  TRISBbits.RB1 = 1; //Set input for sensor ENOUGH WATER
  TRISBbits.RB4 = 1; //
  TRISBbits.RB5 = 1; //

  ADCON1 = 0x0F; //All pins are used in I/O, not in analog. By default PIC has its pin in analog mode!!!
}

void InitializeSoftware(void)
{
  memset(&AppFlashData, 0, sizeof (AppFlashData));
  memset(&AppLevelWatcherData, 0, sizeof (AppLevelWatcherData));
}

void AppFlash_Initialization(void)
{
  AppFlashData.State = FLASHSTATE_WAITTOTURNON;
  AppFlashData.ctr = 0;
}

void AppFlash_Task(void)
{
  switch (AppFlashData.State)
  {
    case FLASHSTATE_WAITTOTURNOFF:
      AppFlashData.ctr++;
      if (AppFlashData.ctr >= iLimiteFlash)
      {
        TRISAbits.TRISA1 = 1;
        AppFlashData.ctr = 0;
        AppFlashData.State = FLASHSTATE_WAITTOTURNON;
      }
      break;

    case FLASHSTATE_WAITTOTURNON:
      AppFlashData.ctr++;
      if (AppFlashData.ctr >= iLimiteFlash)
      {
        TRISAbits.TRISA1 = 0;
        AppFlashData.ctr = 0;
        AppFlashData.State = FLASHSTATE_WAITTOTURNOFF;
      }
      break;
  }
}

//unsigned int IO_GetDipValue(void)
//{
//  unsigned int iValueToReturn = 0x00;
//  if (PORTBbits.RB0 == 0) iValueToReturn = iValueToReturn | 0x01;
//  if (PORTBbits.RB1 == 0) iValueToReturn = iValueToReturn | 0x02;
//  if (PORTBbits.RB4 == 0) iValueToReturn = iValueToReturn | 0x04;
//  if (PORTBbits.RB5 == 0) iValueToReturn = iValueToReturn | 0x08;
//  return iValueToReturn;
//}

void AppLevelWatcher_Initialization(void)
{
  AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_WAITREQUESTOFILL;
  AppLevelWatcherData.StableReadingCounter = 0;
  AppLevelWatcherData.TimeOutCounter = 0;

}

#define TRIGGER_TO_LAUNCHFILL 50
#define TRIGGER_TO_ERROR 300

void AppLevelWatcher_Task(void)
{
  //  if (PORTBbits.RB0 == 0)
  //    iLimiteFlash = 1957;
  //  else
  //    iLimiteFlash = 300;
  //
  //  if (PORTBbits.RB1 == 0)
  //    TRISAbits.TRISA0 = 1;
  //  else
  //    TRISAbits.TRISA0 = 0;

  switch (AppLevelWatcherData.CurrentWatcherTaskState)
  {
    case LEVELWATCHERSTATE_NOTINIT:
      AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_WAITREQUESTOFILL;
      break;

    case LEVELWATCHERSTATE_WAITREQUESTOFILL:
      if (PORTBbits.RB0 == 0)
      {
        AppLevelWatcherData.StableReadingCounter++;
        if (AppLevelWatcherData.StableReadingCounter > TRIGGER_TO_LAUNCHFILL)
        {
          TRISAbits.TRISA0 = 0;
          TRISAbits.TRISA4 = 0; //Turn on the relay, so the valve,
          AppLevelWatcherData.StableReadingCounter = 0;
          AppLevelWatcherData.TimeOutCounter = 0;
          AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_WAITCOMPLETEFILL;
        }
      }
      else
      {
        AppLevelWatcherData.StableReadingCounter = 0;
      }
      break;

    case LEVELWATCHERSTATE_WAITCOMPLETEFILL:
      AppLevelWatcherData.TimeOutCounter++;
      if (PORTBbits.RB1 == 1)
      {
        AppLevelWatcherData.StableReadingCounter++;
        if (AppLevelWatcherData.StableReadingCounter > TRIGGER_TO_LAUNCHFILL)
        {
          TRISAbits.TRISA0 = 1;
          TRISAbits.TRISA4 = 1; //Turn off the relay, so the valve.
          AppLevelWatcherData.StableReadingCounter = 0;
          AppLevelWatcherData.TimeOutCounter = 0;
          AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_WAITREQUESTOFILL;
        }
      }
      else
      {
        AppLevelWatcherData.StableReadingCounter = 0;
        if (AppLevelWatcherData.TimeOutCounter > TRIGGER_TO_ERROR)
        {
          TRISAbits.TRISA0 = 1;
          TRISAbits.TRISA4 = 1; //Turn off the relay, so the valve.
          iLimiteFlash = 1;
          AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_EMERGENCYSTOPFILL;
        }
      }
      break;

    case LEVELWATCHERSTATE_EMERGENCYSTOPFILL:
      break;

    default:
      AppLevelWatcherData.CurrentWatcherTaskState = LEVELWATCHERSTATE_WAITREQUESTOFILL;
      break;
  }
}

#define TENTH_SECOND_TRIGGER 728

int main(int argc, char** argv)
{
  int TenthSecondCounter = 0;
  InitializeHardware();
  InitializeSoftware();

  AppFlash_Initialization();
  AppLevelWatcher_Initialization();

  while (1)
  {
    if (TenthSecondCounter >= TENTH_SECOND_TRIGGER)
    {
      AppFlash_Task();
      AppLevelWatcher_Task();
      TenthSecondCounter = 0;
    }
    TenthSecondCounter++;
    CLRWDT();
  }
  return (EXIT_SUCCESS);
}

