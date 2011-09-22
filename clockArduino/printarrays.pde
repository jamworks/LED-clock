void printArrays(){
  Serial.print("seconds  ");
  Serial.println("led    color  int");
  for(int i=0; i<3; i++){
    Serial.print(" i= " );
    Serial.print(i);
    Serial.print("   ");
    //seconds
    for(int k=0; k<2; k++){
      Serial.print(secondArray[i][k]);
      Serial.print(", " );
    }
    Serial.println();
  }
  /*jWheel(secondLites[0][i], secondLites[1][i])
  for(int i=0; i<3; i++){
    if(secondArray[i][0]>=0){
      int LED = secondArray[i][0];
      int litesIdx = secondArray[i][1];
      Serial.print("LED ");
      Serial.print(LED);
      Serial.print("  LEDidx ");
      Serial.print(litesIdx);
      Serial.print("  color = ");
      Serial.print(secondLites[litesIdx][0]);
      Serial.print(",  ");
      Serial.print("intensity = ");
      Serial.print(secondLites[litesIdx][1]);
    }
    Serial.println();
  }
  */
  /*
  Serial.print("minutes  ");
   Serial.println("led    color  int");
   for(int i=0; i<3; i++){
   Serial.print(" i= " );
   Serial.print(i);
   Serial.print("   ");
   //seconds
   for(int k=0; k<3; k++){
   Serial.print(minuteArray[i][k]);
   Serial.print(", " );
   }
   Serial.println();
   }
   */
  Serial.println();
}




