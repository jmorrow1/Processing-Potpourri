//draws a gradient from color a to color b
//of lines from the top to bottom of the
//rect defined by the parameters a, b, c, and d.
void verticalGradient(int colA, int colB, int a, int b, int c, int d) {
    int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
    switch(getGraphics().getStyle().rectMode) {
        case CORNER : x1 = a; y1 = b; x2 = a + c; y2 = b + d; break;
        case CORNERS: x1 = a; y1 = b; x2 = c; y2 = d; break;
        case CENTER : x1 = a - c/2; y1 = b - d/2; x2 = a + c/2; y2 = b + d/2; break;
        case RADIUS : x1 = a - c; y1 = b - d; x2 = a + c; y2 = b + d; break;
    }
    
    float amt = 0;
    float dAmt = 1f / (y2 - y1);
    strokeWeight(1);
    for (int i=y1; i<y2; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(x1, i, x2, i);
        amt += dAmt;
    }
}

//draws a gradient from color a to color b
//of lines from the left to right of the
//rect defined by the parameters a, b, c, and d.
void horizontalGradient(int colA, int colB, int a, int b, int c, int d) {
    int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
    switch(getGraphics().getStyle().rectMode) {
        case CORNER : x1 = a; y1 = b; x2 = a + c; y2 = b + d; break;
        case CORNERS: x1 = a; y1 = b; x2 = c; y2 = d; break;
        case CENTER : x1 = a - c/2; y1 = b - d/2; x2 = a + c/2; y2 = b + d/2; break;
        case RADIUS : x1 = a - c; y1 = b - d; x2 = a + c; y2 = b + d; break;
    }
    
    float amt = 0;
    float dAmt = 1f / (x2 - x1);
    strokeWeight(1);
    for (int i=x1; i<x2; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(i, y1, i, y2);
        amt += dAmt;
    }
}

//draws a gradient from color a to color b
//of lines from the top of the canvas to the bottom of the canvas
void verticalGradient(int colA, int colB) {
    int n = height;
    float amt = 0;
    float dAmt = 1f / n;
    strokeWeight(1);
    for (int i=0; i<n; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(0, i, width, i);
        amt += dAmt;
    }
}

//draws a gradient from color a to color b
//of lines from the left side of the canvas to the right side of the canvas
void horizontalGradient(int colA, int colB) {
    int n = width;
    float amt = 0;
    float dAmt = 1f / n;
    strokeWeight(1);
    for (int i=0; i<n; i++) {
        stroke(lerpColor(colA, colB, amt));
        line(i, 0, i, height);
        amt += dAmt;
    }
}