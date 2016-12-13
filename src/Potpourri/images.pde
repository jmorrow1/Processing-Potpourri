//Cuts a rectangular section of pixels from a given PImage
//and draws it to the canvas.
void cutPixels(PImage img, int a, int b, int c, int d) {
  int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
  switch (g.getStyle().rectMode) {
    case CORNER : 
      x1 = a;
      y1 = b;
      x2 = a + c;
      y2 = b + d;
      break;
    case CORNERS :
      x1 = a;
      y1 = b;
      x2 = c;
      y2 = d;
      break;
    case CENTER :
      x1 = a - c/2;
      y1 = b - d/2;
      x2 = a + c/2;
      y2 = b + d/2;
      break;
    case RADIUS :
      x1 = a - c;
      y1 = b - d;
      x2 = a + c;
      y2 = b + d;
      break;
  }
  
  loadPixels();
  for (int i=x1; i<x2; i++) {
    for (int j=y1; j<y2; j++) {
      pixels[i + j*width] = img.get(i, j);
    }
  }
  updatePixels();
}