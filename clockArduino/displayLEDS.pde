void displayLEDS(){
    /*Changes needed here 4 states for the seconds minutes arrays
   1-both -1 set background color   2- neither -1 both seconds and minutes at same LED
   3-sec -1 min not  only minute LED  4- sec >=0 min -1 only second LED
   */
  int overlap;
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

    }
    //Serial.print("Overlap = ");
    //Serial.println(overlap);

    //if(clockLEDS[i][0] >= 0){//skip the -1 values seconds
    //  int secIdx = clockLEDS[i][0];
    // strip.setPixelColor(i, jWheel(secondLites[secIdx][0], secondLites[secIdx][1]));
    //  }
   // if(clockLEDS[i][1] >= 0){//skip the -1 values minutes
  //    int minIdx = clockLEDS[i][1];
     // strip.setPixelColor(i, jWheel(minuteLites[minIdx][0], minuteLites[minIdx][1]));
  //  }
  }
  // set hour
  strip.setPixelColor(hour, Color(15,15,15));
  strip.show();
}











