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
    return min + val * quantum;
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

//Maps a domain to a range, but, unlike Processing's map function, guarantees that the result will be constrained to the range.
static float constrainedMap(float x, float x1, float x2, float y1, float y2) {
    return constrain(map(x, x1, x2, y1, y2), y1, y2);
}

//computes the greatest common denominator of a and b
static int gcd(int a, int b) {
    int c;
    while ( a != 0 ) {
       c = a;
       a = b%a;
       b = c;
    }
    return b;
}

//computes the least common multiple of m and n
static int lcm(int m, int n) {
    int lcm = (n == m || n == 1) ? m :(m == 1 ? n : 0);
    if (lcm == 0) {
       int mm = m, nn = n;
       while (mm != nn) {
           while (mm < nn) { mm += m; }
           while (nn < mm) { nn += n; }
       }  
       lcm = mm;
    }
    return lcm;
}

//returns a String representation of an integer n in a given base
static String convertBase(int n, int base) {
    int q = n / base;
    int r = n % base;
    
    if (q == 0) {
        return Integer.toString(r);
    }
    else {
        return convertBase(q, base) + Integer.toString(r);
    }
}