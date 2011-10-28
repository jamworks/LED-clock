###Why make a clock?

It's my beginner project with an Arduino UNO and a clock chip. 
I wanted to make it with only 12 RGB leds and us color and brightness to make it 
obvious visually "what time is it". This will reflect the whys for doing this.
I started this in August of 2011.

After making sure the Laser cut box fit together and all 12 of the [BlipTronics LPD6803-based RGB LED 8mm Modules](http://www.bliptronics.com/item.aspx?ItemID=114) 
were soldered into a string and tested, it looks like a clock. I used some oiginal code by Bliptronics.com Ben Moyes 2009 and some Led code cleaned up and Object-ified by ladyada 2010 and added a few bits myself to make it all work together.

![The begining](../../raw/master/img/clockbox.jpg)

The [DS1307 Real Time Clock breakout board kit](http://www.adafruit.com/products/264) and the Arduino Uno are from Adafruit.

The background color is green and the hours is Magenta(opposite green). The color of the minutes and seconds are moving for green to red and blue from the background green. The closer the LED is to the actual second/minute is indicated by the intensity and color shift. But the real test is can you tell the time?

![time](../../raw/master/img/ColorTime.JPG)

Hope you see 9:05:24.

The SVG files for the laser cuttings are included along with the blender file for the 3D render.
