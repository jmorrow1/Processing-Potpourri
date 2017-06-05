static float distSq(float x1, float y1, float x2, float y2) {
  return (y2-y1)*(y2-y1) + (x2-x1)*(x2-x1);
}

static float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  return (z2-z1)*(z2-z1) + (y2-y1)*(y2-y1) + (x2-x1)*(x2-x1);
}

static float wrappedDistSq(float ax, float ay, float bx, float by, float w, float h) {
  return 
    minimum(distSq(ax, ay, bx, by),
      distSq(ax, ay, bx+w, by),
      distSq(ax, ay, bx+w, by+h),
      distSq(ax, ay, bx, by+h),
      distSq(ax, ay, bx-w, by-h),
      distSq(ax, ay, bx-w, by),
      distSq(ax, ay, bx-w, by+h),
      distSq(ax, ay, bx, by-h),
      distSq(ax, ay, bx+w, by-h));
}

static float wrappedDist(float ax, float ay, float bx, float by, float w, float h) {
  float distSq = 
    minimum(distSq(ax, ay, bx, by),
      distSq(ax, ay, bx+w, by),
      distSq(ax, ay, bx+w, by+h),
      distSq(ax, ay, bx, by+h),
      distSq(ax, ay, bx-w, by-h),
      distSq(ax, ay, bx-w, by),
      distSq(ax, ay, bx-w, by+h),
      distSq(ax, ay, bx, by-h),
      distSq(ax, ay, bx+w, by-h));
    
  return sqrt(distSq);
}

static float minimum(float... vals) {
  if (vals.length == 0) {
    return 0;
  }
  
  float min = vals[0];
  for (int i=1; i<vals.length; i++) {
    if (vals[i] < min) {
      min = vals[i];
    }
  }
  return min;
}