#include <TimerOne.h>
#include "LPD6803.h"

//More tests of the LED clock 
// This is now a branch newArrays. A new way to use array for the led data
// Some oiginal code by Bliptronics.com Ben Moyes 2009
// Led code cleaned up and Object-ified by ladyada 2010
// This branch newArrays by Jerry Jeffress Sept,2011

/********************************************************/
//LPD6803-based RGB LED Modules
//LEDs are bliptronics 8mm Naked PCB module
// set Data and Clock pins
int dataPin = 2;       // 'yellow' wire
int clockPin = 3;      // 'green' wire
// Set the first variable to the NUMBER of pixels. 12 for led clock
LPD6803 strip = LPD6803(12, dataPin, clockPin);
long lastMilli=0;
int seconds=0; 
int minutes = 0;
int intDelta=4;
int ledBGcolor=32;  //green
int theHour = 1;
int ledBGintensity=3;  //background intensity
// secondLites array is the color and intensity of each possible seconds light
int secondLites[11][2] ={{44,3},{50,4},{56,9},{59,12},{64,16},{68,28},{64,16},{59,12},{56,9},{50,4},{44,3}};
//int secondArray[3][2] = {{-1, -1},{-1, -1},{-1, -1}}; 
int minuteArray[3][3]; 
// clockLEDs array hold the data for all the clock leds before merging the seconds and minutes
// row 0 is seconds row 1 is minutes

int clockLEDS[12][2];
void setup(){
  Serial.begin(9600);
  strip.setCPUmax(30);  // start with 50% CPU usage. 
  // Start up the LED counter
  strip.begin();
  // Update the leds, to start they are all 'off'
  for(int i=0; i<12; i++)
    strip.setPixelColor(i, jWheel(0,4));
  
  strip.show();
  delay(1000);
  //oneMinute();
}

void loop(){ 

  if(millis() > lastMilli + 1000){  //Temp clock 1 second tic
    oneSecond();    //update one second
    seconds += 1;
    if(seconds>59){
      seconds = 0;
      //oneMinute();
      minutes += 1;    //temp minutes
      if(minutes>59){
        theHour = theHour + 1;
        minutes = 0; 
      }
    }
    lastMilli = millis();

  }

  // slowRainbow();

}














