void oneSecond(){
  Serial.print("seconds= ");
  Serial.println(seconds);
  int ledA, ledB, ledC;
  int intensity;
  //init sec array
  for(int i=0; i<3; i++){
    secondArray[i][0]= -1;  //no led number
    secondArray[i][1]= -1;  //no color
  }

  if(seconds%5 == 0){  //3 leds ON
    ledA = seconds/5;
    ledB = ledA - 1;
    if(ledB<0)
      ledB = 12 + ledB;
    ledC = ledA + 1;
    if(ledC>11)
      ledC = ledC - 12;
   // intensity = (6 - 5)*intDelta +2;
    secondArray[0][0]=ledB;  //which LED
    secondArray[0][1]=0;    //LED secondLites array index
    //secondArray[0][2]=intensity;
    //intensity = (8)*intDelta;
    secondArray[1][0]=ledA;  //Whick LED
    secondArray[1][1]=5;  //LED secondLites array index
    //secondArray[1][2]=intensity;
    //intensity = (6 - 5)*intDelta +2;
    secondArray[2][0]=ledC;  //which LED
    secondArray[2][1]=10;  //LED secondLites array index
    //secondArray[2][2]=intensity;

  }
  else{  //2 leds ON
    ledB = seconds/5;
    ledC = ledB + 1;
    if(ledC>11)
      ledC = 0;
    int diff = seconds - ledB*5;
    //intensity =  (6 - diff)*intDelta;
    secondArray[0][0]=ledB;  //which led
    secondArray[0][1]=5 - diff ;   //LED secondLites array index
    //secondArray[0][2]=intensity;
   // intensity =  (diff + 1)*intDelta;
    secondArray[1][0]=ledC;  //which led
    secondArray[1][1]=10 - diff;  //LED secondLites array index
    //secondArray[1][2]=intensity;
  }
// oneMinute();
  displayLEDS();

}








