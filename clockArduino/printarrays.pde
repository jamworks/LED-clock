void printArrays(){
  Serial.print("seconds  ");
  Serial.println("led    color  int");
  for(int i=0; i<3; i++){
    Serial.print(" i= " );
    Serial.print(i);
    Serial.print("   ");
    //seconds
    for(int k=0; k<3; k++){
      Serial.print(secondArray[i][k]);
      Serial.print(", " );
    }
    Serial.println();
  }
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
  Serial.println();
}


