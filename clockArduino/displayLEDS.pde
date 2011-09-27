void displayLEDS(){
  /*Changes needed here 4 states for the seconds minutes arrays
   1-both -1 set background color   2- neither -1 both seconds and minutes at same LED
   3-sec -1 min not  only minute LED  4- sec >=0 min -1 only second LED
   */
  int overlap;
  byte hourColor[3] = {
    14,15,14  };
  for(int i=0; i<12; i++){

    if((clockLEDS[i][0]<0) && (clockLEDS[i][1]<0))  //Background only
      overlap = 0;
    if((clockLEDS[i][0]>=0) && (clockLEDS[i][1]<0))  //Seconds only
      overlap = 1;
    if((clockLEDS[i][0]<0) && (clockLEDS[i][1]>=0))  //Minutes only
      overlap = 2;
    if((clockLEDS[i][0]>=0) && (clockLEDS[i][1]>=0))  //Both only
      overlap = 3;
    switch (overlap){
    case 0:
      strip.setPixelColor(i, jWheel(ledBGcolor, ledBGintensity));
      break;
    case 1:
      strip.setPixelColor(i, jWheel(secondLites[clockLEDS[i][0]][0], secondLites[clockLEDS[i][0]][1]));
      break;
    case 2:
      strip.setPixelColor(i, jWheel(minuteLites[clockLEDS[i][1]][0], minuteLites[clockLEDS[i][1]][1]));
      break;
  case 3:
    //int tempColor = minuteLites[clockLEDS[i][1]][0];
   // Serial.print("LED ");
   // Serial.print(i);
   // Serial.print("  tempColor ");
   // Serial.println(tempColor);
   // tempColor = tempColor + 6;
  //  strip.setPixelColor(i, jWheel(tempColor, minuteLites[clockLEDS[i][1]][1]));
  break;
    }
    
  }
  // set hour
  strip.setPixelColor(theHour, Color(hourColor[0],hourColor[1],hourColor[2]));
  strip.show();
}












