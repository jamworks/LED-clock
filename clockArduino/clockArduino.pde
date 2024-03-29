#include <TimerOne.h>
#include "LPD6803.h"
#include <Wire.h>
#include "RTClib.h"
//More tests of the LED clock 
// This is now a branch RTClock. use the DS1307 clock chip
// Some oiginal code by Bliptronics.com Ben Moyes 2009
// Led code cleaned up and Object-ified by ladyada 2010
// This branch RTClock by Jerry JeffressOct,2011

/********************************************************/
//LPD6803-based RGB LED Modules
//LEDs are bliptronics 8mm Naked PCB module
// set Data and Clock pins
int dataPin = 2;       // 'yellow' wire
int clockPin = 3;      // 'green' wire
// Set the first variable to the NUMBER of pixels. 12 for led clock
LPD6803 strip = LPD6803(12, dataPin, clockPin);
RTC_DS1307 RTC;
long lastMilli=0;
int seconds=0; 
int lastSecond;
int minutes = 0;
int hour = 1;
int ledBGcolor=32;  //green
int theHour = 4;
int ledBGintensity=3;  //background intensity
// secondLites array is the color and intensity of each possible seconds light
int secondLites[11][2] ={{39,4},{42,4},{47,6},{52,9},{57,12},{62,17},{57,12},{52,9},{47,6},{42,4},{39,4}};
// minuteLites array is the color and intensity of each possible seconds light
int minuteLites[11][2] ={{25,3},{22,4},{18,6},{12,9},{7,12},{2,12},{7,12},{12,9},{18,6},{22,4},{25,3}};
// clockLEDs array hold the data for all the clock leds before merging the seconds and minutes
// row 0 is seconds row 1 is minutes
int clockLEDS[12][2];

void setup(){
  Serial.begin(9600);
  Wire.begin();
  RTC.begin();
  pinMode(17, OUTPUT);  //set analog pin for DS1307 power
  digitalWrite(17, HIGH);
  pinMode(16, OUTPUT);  
  digitalWrite(16, LOW);
  strip.setCPUmax(30);  // start with 50% CPU usage. 
  // Start up the LED counter
  strip.begin();
  // Update the leds, to start they are all 'off'
  for(int i=0; i<12; i++)
    strip.setPixelColor(i, jWheel(0,4));
  
  strip.show();
  delay(1000);
  oneMinute();
  DateTime now = RTC.now();
  lastSecond = now.second();
}

void loop(){ 
  DateTime now = RTC.now();
  if(lastSecond != now.second()){
    seconds = now.second();
    minutes = now.minute();
    theHour = now.hour()%12;
    oneSecond();  //update leds on clock
    lastSecond = now.second();
  }
/*
  if(millis() > lastMilli + 1000){  //Temp clock 1 second tic
    oneSecond();    //update one second
    seconds += 1;
    if(seconds>59){
      seconds = 0;
      //oneMinute();
      minutes += 1;    //temp minutes
      if(minutes>59){
        theHour = theHour + 1;
        if(theHour>11)
          theHour = 0;
        minutes = 0; 
      }
    }
    lastMilli = millis();
  printTime();
  }
*/
  // slowRainbow();

}














