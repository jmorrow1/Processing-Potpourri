//draws a gradient of lines from the top of the canvas to the bottom of the canvas
//from color a to color b.
void verticalGradient(int colA, int colB, int strokeWeight) {
    int n = height;
    float amt = 0;
    float dAmt = 1f / n;
    strokeWeight(1);
    for (int i=0; i<height; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(0, i, width, i);
        amt += dAmt;
    }
}

//draws a gradient of lines from the left side of the canvas to the right side of the canvas
//from color a to color b
void horizontalGradient(int colA, int colB) {
    int n = width;
    float amt = 0;
    float dAmt = 1f / n;
    strokeWeight(1);
    for (int i=0; i<width; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(i, 0, i, height);
        amt += dAmt;
    }
}