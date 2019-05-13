public class Viewer {
  int x, y;

  public Viewer(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void show() {
    stroke(255);
    strokeWeight(10);
    point(x, y);
  }

  void findImpact(float x, float y, float ang) {
    float w =  distMultCircMin(x, y, obj);
    stroke(255, 0, 0);
    ellipse(x, y, w, w);
    stroke(255);
    line(x, y, w*cos(ang) + x, w*sin(ang) + y);

    x = w*cos(ang) + x;
    y = w*sin(ang) + y;

    if (w <= 0.1) { //IMPACT
      Point impP = new Point(x, y);
      points.add(impP);
    } else if (x>0 && y>0 && x <= width && y <= height) {
      findImpact(x, y, ang);
    }
  }
}
