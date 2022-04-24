class Bird extends Body {
  
  public static final float RADIUS = 35f;
  public final color WHITE = color(255,255,255);
  
  Bird(float x, float y) {
    super(x, y);
  }
  
  void jump() {
    this.acc.y = 0;
    this.vel.y = -4;
  }
  
  // @Overwrite
  void display() {
    fill(WHITE);
    circle(loc.x, loc.y, RADIUS);
  }
  
}
