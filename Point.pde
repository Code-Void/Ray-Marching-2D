public class Point {
  float x, y;
  int lifespan;
  boolean dead;

  public Point(float x, float y) {
    this.x = x;
    this.y = y;
    
    this.dead = false;
    
    this.lifespan = 250;
  }

  void show() {
    lifespan--;
    if(lifespan <= 0) dead = true;
    
    strokeWeight(2);
    stroke(0, 255, 0);
    point(x, y);
  }
}
