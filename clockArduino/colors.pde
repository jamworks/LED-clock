// jerry full byte version
//Input a value 0 to 96 to get a color value.
//input value i 1-32 intensity 32=max
//The colours are a inkscape color wheel

unsigned int jWheel(byte jWheelPos, byte intensity){
  byte r,g,b;
  byte white = 0;
  r,g,b=0;
  jWheelPos = jWheelPos % 96;
  //Serial.println(jWheelPos/16);
  switch(jWheelPos/16){
  case 0:
    r=255;
    g=jWheelPos*16;
    b=0;
    break;
  case 1:
    r=255-jWheelPos*16;
    g=255;
    b=0;
    break;
  case 2:
    r=0;
    g=255;
    b=jWheelPos*16;
    break;
  case 3:
    r=0;
    g=255-jWheelPos*16;
    b=255;
    break;
  case 4:
    r=jWheelPos*16;
    g=0;
    b=255;
    break;
  case 5:
    r=255;
    g=0;
    b=255-jWheelPos*16;
    break;
  }
  //if(intensity>32)
  //  intensity = 32;
  intensity = constrain(intensity, 0, 32);
  r = white + r*intensity/32;
  //  r = constrain(r, 0, 255);
  g = white + g*intensity/32;
  // g = constrain(g, 0, 255);
  b = white + b*intensity/32;
  // b = constrain(b, 0, 255);
  //Color for a LPD6803-based RGB LED Modules
    return(Color(r/8,g/8,b/8));
 
  
}
// Create a 15 bit color value from R,G,B jerry reodered color to rgb
unsigned int Color(byte r, byte g, byte b)
{
  //Take the lowest 5 bits of each value and append them end to end
  return( ((unsigned int)r & 0x1F )<<10 | ((unsigned int)g & 0x1F)<<5 | (unsigned int)b & 0x1F);
}

