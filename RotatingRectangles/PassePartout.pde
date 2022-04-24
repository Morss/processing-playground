class PassePartout {
  static final float MARGIN = 500;
  
  float size;
  color c;
  PVector loc;
  float angle;
    
  PassePartout(float size, color c, float x, float y) {
    this.size = size;
    this.c = c;
    this.loc = new PVector(x, y);
    this.angle = 0;
  }
  
  void rotate(float angle) {
    this.angle = angle;
  }
  
  void display() {
    rectMode(RADIUS);
    noStroke();
    fill(c);
    
    // Upper
    rect(loc.x, loc.y + size + MARGIN/2, MARGIN + size, MARGIN/2);
    
    // Lower
    rect(loc.x, loc.y - size - MARGIN/2, MARGIN + size, MARGIN/2);
    
    // Left
    rect(loc.x - size - MARGIN/2, loc.y, MARGIN/2, size+10);
    
    // Right
    rect(loc.x + size + MARGIN/2, loc.y, MARGIN/2, size+10);    
  }
  
}
