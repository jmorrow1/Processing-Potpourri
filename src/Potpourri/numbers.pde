//Calculates the remainder of num / denom.
//Differs from the % operator in that negative values wrap around
//e.g. remainder(-1, 5) evaluates to 4, remainder(-2, 5) evaluates to 3, ...
//Useful for implementing world wrapping (like in Pac-Man)
static float remainder(float num, float denom) {
    if (0 <= num && num < denom) return num;
    else if (num > 0) return num % denom;
    else return denom - ((-num) % denom);
}

//Calculates the remainder of num / denom.
//Differs from the % operator in that negative values wrap around
//e.g. remainder(-1, 5) evaluates to 4, remainder(-2, 5) evaluates to 3, ...
//Useful for implementing world wrapping (like in Pac-Man) 
static int remainder(int num, int denom) {
    if (0 <= num && num < denom) return num;
    else if (num > 0) return num % denom;
    else return denom - ((-num) % denom);
}

//Converts a float coordinate to an integer coordinate.
//Useful when working with grids and converting from real space to array indices.
static int toIntCoord(float val, float min, float quantum) {
    val -= min;
    val /= quantum;
    return (int)val;
}

//Restricts a float value to one of a number of discrete states
//Useful when you're working with grids and you want to know the location of a cell where a point is located.
static float quantize(float val, float min, float quantum) {
    val -= min;
    val /= quantum;
    val = (int)val;
    return val * quantum;
}

//Averages a sequence of floating point numbers
static float avg(float... xs) {
    float acc = 0;
    for (float x : xs) {
        acc += x;
    }
    acc /= xs.length;
    return acc;
}

//Sums a sequence of floating point numbers
static float sum(float... xs) {
    float acc = 0;
    for (float x : xs) {
        acc += x;
    }
    return acc;
}