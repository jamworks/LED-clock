void printArrays(){
  Serial.print("seconds  ");
  Serial.println();
}

void printClockLEDS(){
  Serial.println(" clockLEDS seconds=" );
  for(int i=0; i<12; i++){

    Serial.print(clockLEDS[i][0]);
    Serial.print("   ");
  }
  Serial.println();
  //Serial.println("secondLites color");
 // for(int i=0; i<12; i++){

   // Serial.print(secondLites[i][0]);
    //Serial.print("   ");
 // }
  Serial.println();
}
void printTime(){
  DateTime now = RTC.now();//get time from RTC
  Serial.print(now.year(), DEC);
  Serial.print('/');
  Serial.print(now.month(), DEC);
  Serial.print('/');
  Serial.print(now.day(), DEC);
  Serial.print(' ');
  Serial.print(now.hour(), DEC);
  Serial.print(':');
  Serial.print(now.minute(), DEC);
  Serial.print(':');
  Serial.print(now.second(), DEC);
  Serial.println();
}



