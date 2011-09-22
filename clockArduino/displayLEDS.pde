void displayLEDS(){
  //Set background leds 
  for(int i=0; i<12; i++)
    strip.setPixelColor(i, jWheel(ledBGcolor, ledBGintensity));
  //calc led colors
  for(int i=0; i<12; i++){
    //seconds
    for(int k=0; k<3; k++){  //This is not right yet.....
      if(secondArray[k][0] == i)
        strip.setPixelColor(i, jWheel(secondLites[0][i], secondLites[1][i]));
    }
    /*
    for(int k=0; k<3; k++){   
      if(minuteArray[k][0] == i)
        strip.setPixelColor(i, jWheel(minuteArray[k][1], minuteArray[k][2]));
    }
    */
  }
  //temp fixed hour LED
//  strip.setPixelColor(theHour, jWheel(16,24));
  printArrays();
  strip.show();
}




