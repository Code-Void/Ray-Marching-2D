interface MarchableObject {
  float DE(float x, float y); // Distance Estimator function for that object
  void showNotScanned();
}

public class Circle implements MarchableObject {
  float cx, cy; // Center of circle
  int radius;

  public Circle(float cx, float cy, int radius) {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
  }

  float DE(float x, float y) {
    return dist(cx, cy, x, y)-radius;
  }

  void showNotScanned() {
    stroke(0, 0, 255);
    strokeWeight(1);
    ellipse(cx, cy, radius, radius);

    strokeWeight(10);
    point(cx, cy);
  }
}

public class Rectangle implements MarchableObject {
  float cx, cy; // Center of rectanlge
  float rx, ry; // Half of width, half of height

  public Rectangle(float cx, float cy, float rx, float ry) {
    this.rx = rx;
    this.ry = ry;
    this.cx = cx;
    this.cy = cy;
  }

  float DE(float x, float y) {
    float dx = abs(x - cx) - rx;
    float dy = abs(y - cy) - ry;
    return dist(0, 0, max(dx, 0), max(dy, 0)) + min(0, max(dx, dy));
  }

  void showNotScanned() {
    stroke(0, 0, 255);
    strokeWeight(1);
    rectMode(RADIUS);
    rect(cx, cy, rx, ry);
    rectMode(CORNER);

    strokeWeight(10);
    point(cx, cy);
  }
}
