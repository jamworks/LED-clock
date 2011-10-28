###Why make a clock?

August, 2011: I had an Arduino UNO. 
The question: What to make as my beginning project?

I wanted to make something practical, colourful and easily shown off to anyone coming through my door and portable enough to take places. I chose to make a clock. I added a clock chip to my list of components. I settled on using 12 RGB LEDs to tell the time with colour and brightness. 

Keeping within traditional realms, my clock case resembles a round clock, 300mm (10") diameter. I used Inkscape to design the case parts and had Ponoko laser cut them out of 4mm plywood (plus a clear acrylic face).

The laser cut clock case fit together the first time! I felt very pleased as there are a lot of tabs, slots and holes. Next came soldering all 12 of the [BlipTronics LPD6803-based RGB LED 8mm Modules](http://www.bliptronics.com/item.aspx?ItemID=114) into a string and testing. This fiddly bit took a while. But the project started acting like a clock. When the LEDs got installed in the case, the project began to look like a clock. For driving the LEDs, I used some original code by Bliptronics.com Ben Moyes 2009 and some LED code cleaned up and Object-ified by ladyada 2010 and added a few bits myself to make it all work together.

![The begining](../../raw/master/img/clockbox.jpg)

The [DS1307 Real Time Clock breakout board kit](http://www.adafruit.com/products/264) and the Arduino Uno are from Adafruit.

How does my clock tell time? The current hour is Magenta. All other hours are a background Green, except those that tell current Minutes and Seconds. Minutes move through green-yellow-RED-yellow-green. The bright RED occurs at each exact 5 minute interval. Seconds move from green -> cyan -> BLUE -> cyan ->green. The bright BLUE occurs at each 5 second interval. Fairly easy to get the hang of it. Not so easy to describe. Here is an example showing the time as 9:05:24.

![time](../../raw/master/img/ColorTime.JPG)

I love the fact that I can use linux (Ubuntu) for the OS that communicates with the Arduino IDE that makes my Arduino's do stuff. 

Having used Inkscape to design the laser cut parts, I was able to import those .svg files into Blender, assign some thickness values for the parts, assemble in 3D and render for a prototype model. The model allows one to see if everything seems to fit together. I use Gimp if any image bits need to be edited.

The SVG files for the laser cuttings are included along with the blender file for the 3D render.
![render](../../raw/master/img/clockparts1.jpg)


