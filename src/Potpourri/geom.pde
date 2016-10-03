float distSq(float x1, float y1, float x2, float y2) {
    return (y2-y1)*(y2-y1) + (x2-x1)*(x2-x1);
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
    return (z2-z1)*(z2-z1) + (y2-y1)*(y2-y1) + (x2-x1)*(x2-x1);
}