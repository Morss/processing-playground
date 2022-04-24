class Pipe extends Body {

  
  public static final float GAP_HEIGHT_MIN = 100;
  public static final float GAP_HEIGHT_MAX = 650;
  public static final float GAP_SIZE = 250;
  public static final float PIPE_SIZE = 150;
  public static final float INITIAL_VX = -1;
  
  public final color GREEN = color(100, 255, 0);
  private final float gapHeight; 
  
  Pipe(float x) {
    super(x, 0);
    this.vel.x = INITIAL_VX;
    gapHeight = random(GAP_HEIGHT_MIN, GAP_HEIGHT_MAX);
  }
  
  // @Overwrite
  void display() {
    fill(GREEN);
    noStroke();
    rect(loc.x, 0, PIPE_SIZE, gapHeight);
    rect(loc.x, gapHeight + GAP_SIZE, PIPE_SIZE, 1000);
  }
}
