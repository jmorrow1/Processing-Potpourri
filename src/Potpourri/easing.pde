//various easing functions:

static float quadEaseIn(float t) {
    return t*t;
}

static float quadEaseOut(float t) {
    return -t*(t-2);
}

static float quadEaseInOut(float t) {
    t *= 2;
    if (t < 1) return 0.5*t*t;
    t--;
    return -0.5 * (t*(t-2) - 1);
}

static float cubicEaseIn(float t) {
    return t*t*t;
}

static float cubicEaseOut(float t) {
    t--;
    return t*t*t + 1;
}

static float cubicEaseInOut(float t) {
    t *= 2;
    if (t < 1) return 0.5*t*t*t;
    t -= 2;
    return 0.5*(t*t*t + 2);
}

static float circEaseIn(float t) {
    return -(sqrt(1 - t*t) - 1);
}

static float circEaseOut(float t) {
    t--;
    return sqrt(1 - t*t);
}

static float circEaseInOut(float t) {
    t *= 2;
    if (t < 1) return -0.5 * (sqrt(1 - t*t) - 1);
    t -= 2;
    return 0.5 * (sqrt(1 - t*t) + 1);
}

//various easing functions as types:

interface Easing {
    float val(float t);
}

class QuadEaseIn implements Easing {
    float val(float t) {
        return t*t;
    }
}

class QuadEaseOut implements Easing {
    float val(float t) {
        return -t*(t-2);
    }
}

class QuadEaseInOut implements Easing {
    float val(float t) {
        t *= 2;
        if (t < 1) return 0.5*t*t;
        t--;
        return -0.5 * (t*(t-2) - 1);
    }
}

class CubicEaseIn implements Easing {
    float val(float t) {
        return t*t*t;
    }
}

class CubicEaseOut implements Easing {
    float val(float t) {
        t--;
        return t*t*t + 1;
    }
}

class CubicEaseInOut implements Easing {
    float val(float t) {
        t *= 2;
        if (t < 1) return 0.5*t*t*t;
        t -= 2;
        return 0.5*(t*t*t + 2);
    }
}

class CircEaseIn implements Easing {
    float val(float t) {
        return -(sqrt(1 - t*t) - 1);
    }
}

class CircEaseOut implements Easing {
    float val(float t) {
        t--;
        return sqrt(1 - t*t);
    }
}

class CircEaseInOut implements Easing {
    float val(float t) {
        t *= 2;
        if (t < 1) return -0.5 * (sqrt(1 - t*t) - 1);
        t -= 2;
        return 0.5 * (sqrt(1 - t*t) + 1);
    }
}