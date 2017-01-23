//Computes the distance between the two colors (c1 and c2)
//within the given color space (mode),
//which should be either HSB or RGB
float colorDist(int c1, int c2, int mode) {
  if (mode == RGB) {
    return dist(red(c1), green(c1), blue(c1), red(c2), green(c2), blue(c2));
  }
  else { //mode == HSB
    return dist(hue(c1), saturation(c1), brightness(c1), hue(c2), saturation(c2), brightness(c2));
  }
}

//Computes the average color within the PImage,
//given some color space, which should be
//either HSB or RGB.
int averageColor(PImage img, int mode) {
  if (mode == RGB) {
    float avgRed = 0;
    float avgGre = 0;
    float avgBlu = 0;
    
    for (int i=0; i<img.width; i++) {
      for (int j=0; j<img.height; j++) {
        int c = img.get(i, j);
        avgRed += red(c);
        avgGre += green(c);
        avgBlu += blue(c);
      }
    }
    
    int pixelCount = img.width * img.height;
    avgRed /= pixelCount;
    avgGre /= pixelCount;
    avgBlu /= pixelCount;
    
    colorMode(RGB);
    return color(avgRed, avgGre, avgBlu);
  }
  else {
    float avgHue = 0;
    float avgSat = 0;
    float avgBri = 0;
    
    for (int i=0; i<img.width; i++) {
      for (int j=0; j<img.height; j++) {
        int c = img.get(i, j);
        avgHue += hue(c);
        avgSat += saturation(c);
        avgBri += brightness(c);
      }
    }
    
    int pixelCount = img.width * img.height;
    avgHue /= pixelCount;
    avgSat /= pixelCount;
    avgBri /= pixelCount;
    
    colorMode(RGB);
    return color(avgHue, avgSat, avgBri);
  }
}

//computes the average brightness of a PImage
float brightnessAverage(PImage img) {
  float avg = 0;
  for (int i=0; i<img.width; i++) {
    for (int j=0; j<img.height; j++) {
      int c = img.get(i, j);
      avg += brightness(c);
    }
  }
  avg /= (img.width * img.height);
  return avg;
}