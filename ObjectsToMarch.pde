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
