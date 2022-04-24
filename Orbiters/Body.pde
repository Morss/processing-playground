class Body {

  float r;
  color c;
  PVector loc;
  PVector vel;
  PVector acc;
  
  Body(float r, color c, float x, float y, float vx, float vy) {
    this.r = r;
    this.c = c;
    this.loc = new PVector(x, y);
    this.vel = new PVector(vx, vy);
    acc = new PVector(0,0);
  }
  
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
 
  void display() {
    stroke(0);
    fill(c);
    circle(loc.x, loc.y, r);
  }
}
