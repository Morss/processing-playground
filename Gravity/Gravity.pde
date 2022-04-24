static final float G = 0.000001;
static final ArrayList<Body> movingBodies = new ArrayList();
final color RED = color(255, 0, 0);

void setup() {
  size(1000, 1000);
  frameRate(300);
  
  for (int i = 0; i < 100; i++) {
    float y = random(200, 800);
    float x = random(200, 800);
    float r = pow(random(10, 160) / 10, 1);
    float vx = random(-10, 10) / 100;
    float vy = random(-10, 10) / 100;
    movingBodies.add(new Body(r, RED, x, y, vx, vy));
  }
  
}

void draw() {
  background(0);
  
  PVector acc = new PVector(0, 0);
  PVector d;
  for (Body current : movingBodies) {
    acc.set(0, 0);
    for (Body other : movingBodies) {
      if (current == other) {continue;}
      d = PVector.sub(other.loc, current.loc);
      acc.add(d.mult(G * other.m / abs(d.magSq())));
    }
    current.acc.set(acc);
    current.move();
    current.display();
  }
 
}
