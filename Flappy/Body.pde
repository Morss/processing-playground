abstract class Body {
  
  PVector loc;
  PVector vel;
  PVector acc;
  
  Body(float x, float y) {
    this.loc = new PVector(x, y);
    this.vel = new PVector(0, 0);
    this.acc = new PVector(0, 0);
  }
  
  void translate(PVector t) {
    this.loc.add(t);
  }

  void accel(PVector a) {
    this.vel.add(a);
  }
  
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
 
  abstract void display();
}
