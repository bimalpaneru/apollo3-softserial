# Software Serial on V2.1.1

## ===========================================================
April 2021 / paulvha

## Background

Many people raised question: where is softwareSerial on V2 of the Apollo3 library?
Sounds like a nice challenge to try. I started off with the version that was written by Nathan Seidle for V1.2.x Apollo3 library. This V1 library is NOT using MBED-OS, but has all the functions in itself.

## Result

After long testing and debugging Software Serial it is possible with sending/receiving speed up to 19200.

Higher speeds are not possible with V2.0.x library as MBED is impacting the overall performance of the excution process with factor of about 2. So execution of a user level program on V2 is slower as it seems that the processor is being busy with something else.

That said, normally you would not notice the difference due to the large processor-idle time a normal program has, however when dealing with microseconds precision it becomes an issue as expained below.

However for many solutions a 19200 baud sending/receiving Software Serial is a good enough solution.

## More detailed information

See the document explained.odt, which you can read with any word processor.
For usage see https://www.arduino.cc/en/Reference/SoftwareSerial

## Installation

1. Copy the complete SofwareSerial-directory in the directory :   apollo3/2.1.1/libraries

## Versioning

### version October 2021
 * updated version for V 2.1.1 to allow by-passing MBED interrupt handling. It is now handling 19200 stable and can often achieve 38400 baud receiving, but sending only up to 19200.

### version April 2021
 * Initial version SoftwareSerial for Library 2.0.6 achieving 9600 baud RX
