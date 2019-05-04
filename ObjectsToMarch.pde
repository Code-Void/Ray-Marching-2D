public class Circle {
  float x, y;
  int size;

  public Circle(float x, float y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void showNotScanned() {
    stroke(0, 0, 255);
    strokeWeight(1);
    ellipse(x, y, size, size);

    strokeWeight(10);
    point(x, y);
  }
}
