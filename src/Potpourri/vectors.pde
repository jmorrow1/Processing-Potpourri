void arrow(PVector v, float r, float theta) {
    line(0, 0, v.x, v.y);
    triangle(v.x + r * cos(v.heading()), v.y + r * sin(v.heading()),
             v.x + r * cos(v.heading() + theta), v.y + r * sin(v.heading() + theta),
             v.x + r * cos(v.heading() - theta), v.y + r * sin(v.heading() - theta));
}