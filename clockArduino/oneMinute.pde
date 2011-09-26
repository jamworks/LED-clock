void oneMinute(){
  Serial.print("minutes= ");
  Serial.println(minutes);
  int ledA, ledB, ledC;
  // Set clockLEDS array to -1 minutes only
  for(int i=0; i<12; i++){
   //clockLEDS[i][0] = -1; 
    clockLEDS[i][1] = -1; 
  }

  if(minutes%5 == 0){  //3 leds ON
    ledA = minutes/5;
    ledB = ledA - 1;
    if(ledB<0)
      ledB = 12 + ledB;
    ledC = ledA + 1;
    if(ledC>11)
      ledC = ledC - 12;

    clockLEDS[ledB][1]=0;  //index for secondLites  min second color/value 
    clockLEDS[ledA][1]=5;  //index for secondLites  max second color/value
    clockLEDS[ledC][1]=0;  //index for secondLites  min second color/value
  }
  else{  //2 leds ON
    ledB = minutes/5;
    ledC = ledB + 1;
    if(ledC>11)
      ledC = 0;

    clockLEDS[ledB][1]=5 + minutes%5;  //index for secondLites   second color/value
    clockLEDS[ledC][1]= minutes%5;  //index for secondLites   second color/value
  }
  

}
  
  
  

