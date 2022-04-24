static final float G = 1;

final color RED = color(255, 0, 0);
final color YELLOW = color(255, 255, 0);

final Body bigBody = new Body(50, YELLOW, 500, 500, 0, 0);;
final ArrayList<Body> movingBodies = new ArrayList();


void setup() {
  size(1000, 1000);
  frameRate(300);

  for (int i = 0; i < 10; i++) {
    float y = 460 - 30 * i;
    movingBodies.add(new Body(10, RED, 400, y, 1, 0));
  }
}

void draw() {
  background(100);
  bigBody.display();  
  
  PVector d;
  for (Body smallBody : movingBodies) {    
    d = PVector.sub(bigBody.loc, smallBody.loc);
    
    smallBody.acc = d.mult(G / abs(d.magSq()));
    smallBody.move();
    smallBody.display();
  }
}
