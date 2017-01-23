import java.util.Random;

//random number generator
static class RNG extends Random {
  float random(double max) {
    return random((float)max);
  }

  float random(double min, double max) {
    return random((float)min, (float)max);
  }

  float random(float max) {
    return random(0, max);
  }

  float random(float min, float max) {
    return min + (max-min)*nextFloat();
  }

  int random(int max) {
    return random(0, max);
  }

  int random(int min, int max) {
    return (int)(min + (max-min)*nextFloat());
  }
}

int choose(int[] choices, float[] weights) {  
  float sum = 0;
  for (int i=0; i<weights.length; i++) {
    sum += weights[i];
  }

  float r = random(sum);
  float s = 0;
  for (int i=0; i<choices.length; i++) {
    s += weights[i];
    if (r < s) {
      return choices[i];
    }
  }
  return -1;
}

void shuffle(int[] xs) {
  ArrayList<Integer> items = new ArrayList<Integer>();
  for (int i=0; i<xs.length; i++) {
    items.add(xs[i]);
  }

  int i = 0;
  while (items.size() > 0) {
    int r = floor(random(items.size()));
    xs[i] = items.remove(r);
    i++;
  }
}