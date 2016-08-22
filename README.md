# Processing-Potpourri
Assorted functions for Processing

Processing Potpourri is a collection of random functions that I've found myself writing over and over again and decided to put in one place.
It's written in .pde files because it's not really intended to be used like a proper Processing library.
It's more for copying and pasting functions into Processing sketches that need them.
Most of the functions are independent, and interdependent functions are always located in the same file.

##Categories
###Easing
Easing curves for making natural-looking animations.
###Gradients
Functions for drawing color gradients
``` {.processing}
int c1 = color(204, 102, 0);
int c2 = color(0, 102, 153);
verticalGradient(c1, c2); //makes a vertical gradient that covers the whole canvas
verticalGradient(c2, c1, width/2, height/2, 100, 100); //makes a vertical gradient within a 100 x 100 pixel rect
```
###Numbers
Functions on numbers.
###Polygons
Functions for drawing polygons circumscribed in ellipses.
``` {.processing}
//draws an octagon circumscribed in a circle centered about (width/2, height/2) with radius 150:
drawPolygon(width/2, height/2, 150, 8);
```
###Vectors
Functions for drawing PVectors
``` {.processing}
translate(width/2, height/2);
fill(0);
arrow(new PVector(100, 50), 10, radians(120));
```
