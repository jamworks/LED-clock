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




