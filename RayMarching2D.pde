ArrayList<MarchableObject> obj = new ArrayList<MarchableObject>();
Viewer v;
ArrayList<Point> points = new ArrayList<Point>();
boolean go = false;

void setup() {
  fullScreen();

  obj.add(new Circle(width - (width/4), height/2, 200));
  obj.add(new Circle(width - (width/9), height/4, 400));
  obj.add(new Rectangle(width/2, height/3, 50, 50));
  obj.add(new Rectangle(width/10, height*2/3, 50, 50));
  v = new Viewer(width/6, height/2);

  background(0);
  ellipseMode(RADIUS);
  noFill();
}

void draw() {
  background(0);

  for (MarchableObject o : obj) o.showNotScanned();

  v.show();
  if (go) {
    strokeWeight(1);
    pushMatrix();
    translate(v.x, v.y);
    PVector mouse = new PVector(mouseX-v.x, mouseY-v.y);
    float angle = mouse.heading(); //map(mouse.heading(), 0, 0.744, -PI/6, PI/6);
    popMatrix();
    v.findImpact(v.x, v.y, angle);
  }
  // Use this for automatic stuff
  //for (float i = -PI/6; i < PI/6; i += 0.001)  v.findImpact(v.x, v.y, i);

  for (int i = points.size()-1; i >= 0; i--) {
    points.get(i).show();
    //points have lifspans... for some reason
    if (points.get(i).dead) points.remove(i); //Remove dead points
  }
}

void keyPressed() {
  go = !go;
}
