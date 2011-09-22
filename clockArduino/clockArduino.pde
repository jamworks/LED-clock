#include <TimerOne.h>
#include "LPD6803.h"

//First tests of the LED clock 
// now 12 LEDs 
// Some oiginal code by Bliptronics.com Ben Moyes 2009
// Led code cleaned up and Object-ified by ladyada 2010
// This version1_4 by Jerry Jeffress Sept,2011
//this is the new version in git
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
int secondLites[11][2] ={{44,8},{48,12},{52,16},{56,20},{60,24},{64,28},{60,24},{56,20},{52,16},{48,12},{44,8}};
int secondArray[3][2] = {{-1, -1},{-1, -1},{-1, -1}}; 
int minuteArray[3][3]; 
void setup(){
  Serial.begin(9600);
  strip.setCPUmax(30);  // start with 50% CPU usage. 
  // Start up the LED counter
  strip.begin();
  // Update the leds, to start they are all 'off'
  for(int i=0; i<12; i++)
    strip.setPixelColor(i, jWheel(0,4));
  //Initialize the secondArray
  Serial.println("init array values");
  //init arrays
  for(int i=0; i<3; i++){
    for(int k=0; k<3; k++){
      secondArray[i][k]= -1;  //no color, lednum or intensity
      minuteArray[i][k]= -1;  //no color, lednum or intensity
    }
  }
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














