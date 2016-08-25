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