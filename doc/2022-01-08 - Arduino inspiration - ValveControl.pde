#include <VirtualWire.h>

#undef round


int shdnPin = 6;
int setPin = 4;
int resetPin = 5;
int openButtonPin = 10;
int closeButtonPin = 11;
int rvPin = 9;

int val = 0;

void boosterOff()
{
  digitalWrite(shdnPin, HIGH);
}

void boosterOn()
{
  digitalWrite(shdnPin, LOW);
}

void setup()
{
  Serial.begin(4800);

    // Initialise the IO and ISR
    vw_set_ptt_inverted(true); // Required for DR3100
    vw_setup(2000);	 // Bits per sec
    vw_set_rx_pin(rvPin);
    vw_rx_start();       // Start the receiver PLL running
    
  pinMode(shdnPin, OUTPUT);
  pinMode(setPin, OUTPUT);
  pinMode(resetPin, OUTPUT);

  pinMode(openButtonPin, INPUT);
  pinMode(closeButtonPin, INPUT);
  
  digitalWrite(setPin, LOW);
  digitalWrite(resetPin, LOW);
  boosterOff();

  closeSolenoid();  
}

void openSolenoid()
{
  boosterOn();  // charge capacitor
  delay(500);
  boosterOff();
  digitalWrite(setPin, HIGH);
  delay(250);
  digitalWrite(setPin, LOW);
}

void closeSolenoid()
{
  boosterOn();
  delay(500);
  boosterOff();
  digitalWrite(resetPin, HIGH);
  delay(250);
  digitalWrite(resetPin, LOW);
}

void loop()
{
    uint8_t buf[VW_MAX_MESSAGE_LEN];
    uint8_t buflen = VW_MAX_MESSAGE_LEN;

    if (vw_get_message(buf, &buflen)) // Non-blocking
    {
      Serial.print(buf[0], HEX);
        if(buf[0] == 'o') {
          openSolenoid();
        }
        else if(buf[0] == 'c') {
          closeSolenoid();
        }
    }
    else {
      val = digitalRead(openButtonPin);
      if (val == HIGH) {
        openSolenoid();
      }
      val = digitalRead(closeButtonPin);
      if (val == HIGH) {
        closeSolenoid();
      }
    }
}
