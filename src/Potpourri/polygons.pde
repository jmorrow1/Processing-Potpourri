//Draws a polygon circumscribed in a circle
void drawPolygon(float cenx, float ceny, float radius, int numVertices) {
  drawPolygon(cenx, ceny, radius, radius, numVertices, 0);
}

//Draws a polygon circumscribed in a circle
void drawPolygon(float cenx, float ceny, float radius, int numVertices, float startTheta) {
  drawPolygon(cenx, ceny, radius, radius, numVertices, startTheta);
}

//Draws a polygon circumscribed in an ellipse
void drawPolygon(float cenx, float ceny, float xRadius, float yRadius, int numVertices, float startTheta) {
  float theta = startTheta;
  float dTheta = TWO_PI / numVertices;
  beginShape();
  for (int i=0; i<numVertices; i++) {
    vertex(cenx + xRadius*cos(theta), 
      ceny + yRadius*sin(theta));
    theta += dTheta;
  }
  endShape(CLOSE);
}

//draws a polygon circumscribed in a circle
void drawPolygon(float cenx, float ceny, float radius, float[] angles) {
  drawPolygon(cenx, ceny, radius, radius, angles);
}

//draws a polygon circumscribed in an ellipse
void drawPolygon(float cenx, float ceny, float xRadius, float yRadius, float[] angles) {
  beginShape();
  for (int i=0; i<angles.length; i++) {
    vertex(cenx + xRadius*cos(angles[i]), 
      ceny + yRadius*sin(angles[i]));
  }
  endShape(CLOSE);
}