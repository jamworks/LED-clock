void slowRainbow(){
  for(int i=0; i<96; i++){
    for(int l=0; l<12; l++){
      int k=i+l*4;
      if(k>=96)
        k=k-96;
      strip.setPixelColor(l, jWheel(k,16));
      //Serial.print(l);
     // Serial.print(", ");
     // Serial.print(k);
     // Serial.print(" - ");
    }
    strip.show();
  //  Serial.println();
    delay(100);
  }
}

