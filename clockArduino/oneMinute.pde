void oneMinute(){
  Serial.print("minutes= ");
  Serial.println(minutes);
  int ledA, ledB, ledC;
  int intensity;
  //init sec array
  for(int i=0; i<3; i++){
    minuteArray[i][0]= -1;  //no led number
    minuteArray[i][1]= -1;  //no color
    minuteArray[i][2]= -1;  //no intensity
  }

  if(minutes%5 == 0){  //3 leds ON
    ledA = minutes/5;
    ledB = ledA - 1;
    if(ledB<0)
      ledB = 12 + ledB;
    ledC = ledA + 1;
    if(ledC>11)
      ledC = ledC - 12;
    intensity = (6 - 5)*intDelta;
    minuteArray[0][0]=ledB;
    minuteArray[0][1]=98;
    minuteArray[0][2]=intensity;
    intensity = (6 - 0)*intDelta;
    minuteArray[1][0]=ledA;
    minuteArray[1][1]=86;
    minuteArray[1][2]=intensity;
    intensity = (6 - 5)*intDelta;
    minuteArray[2][0]=ledC;
    minuteArray[2][1]=98;
    minuteArray[2][2]=intensity;

  }
  else{  //2 leds ON
    ledB = minutes/5;
    ledC = ledB + 1;
    if(ledC>11)
      ledC = 0;
    int diff = minutes - ledB*5;
    intensity =  (6 - diff)*intDelta;
    minuteArray[0][0]=ledB;
    minuteArray[0][1]=86 + diff*3;
    minuteArray[0][2]=intensity;
    intensity =  (diff + 1)*intDelta;
    minuteArray[1][0]=ledC;
    minuteArray[1][1]=98 - diff*3;
    minuteArray[1][2]=intensity;
  }
}
