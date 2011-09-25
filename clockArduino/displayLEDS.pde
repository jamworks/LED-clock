void displayLEDS(){
  //Set background leds 
  for(int i=0; i<12; i++)
    strip.setPixelColor(i, jWheel(ledBGcolor, ledBGintensity));
  //delay(300);
   
  for(int i=0; i<12; i++){
    if(clockLEDS[i][0] >= 0){//skip the -1 values
      int secIdx = clockLEDS[i][0];
      strip.setPixelColor(i, jWheel(secondLites[secIdx][0], secondLites[secIdx][1]));
    }
  }

  strip.show();
}







