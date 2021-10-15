/*
  Author: Nathan Seidle
  SparkFun Electronics
  Created: June 19 2019
  License: MIT. See SparkFun Arduino Apollo3 Project for more information

  Feel like supporting open source hardware? Buy a board from SparkFun!
  https://www.sparkfun.com/artemis

  This example shows how to enable multiple software serial ports at 19200bps.
  You can only receive on one pin at a time. Use .listen() to switch between
  RX pins.

  Note: When multiple ports are enabled receiving at 38400 is no longer
  possible. This is because the receive interrupt has additional overhead
  and cannot run fast enough to correctly capture bits in time. TX at 19200
  is still supported.

  Hardware Connections:
  Attach a USB to serial converter (https://www.sparkfun.com/products/15096)
  Connect
    GND on SerialBasic <-> GND on Artemis
    RXO on SerialBasic <-> Pin 8 on Artemis
    TXO on SerialBasic <-> Pin 7 on Artemis
  Load this code
  Open Arduino serial monitor at 115200
  Open Terminal window (TeraTerm) at 19200
  Press a button in terminal window, you should see it in Arduino monitor
*/

#include <SoftwareSerial.h>
SoftwareSerial mySerialA(D7, D8); //RX, TX - Any pins can be used
SoftwareSerial mySerialB(D2, D3); //RX, TX - Any pins can be used

int counter = 0;

void setup() {
  //We set the serial monitor speed high so that we spend less time printing the output
  Serial.begin(115200);
  Serial.println("Software Serial Example");

  mySerialA.begin(19200);
  mySerialB.begin(9600);

  //We are now using mySerialB because it was the last one to begin. Use .listen() to change ports.
}

void loop() {
  mySerialA.listen();
  mySerialA.print("I'm A: ");
  mySerialA.println(counter);
  mySerialA.flush(); //Wait for TX buffer to get sent out

  mySerialB.listen();
  mySerialB.print("I'm B: ");
  mySerialB.println(counter);
  mySerialB.flush();

  counter++;
}
