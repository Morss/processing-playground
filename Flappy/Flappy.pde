static final PVector G = new PVector(0, 0.1); 
final color RED = color(255, 0, 0);
final color YELLOW = color(255, 255, 0);
final color BLUE = color(70, 188, 255);

final float PIPE_START = 800;
final float PIPE_INTERVAL = 500;

ArrayList<Body> bodies = new ArrayList<Body>();
Bird bird = new Bird(100, 100);

void setup() {
  size(1000, 1000);
  frameRate(144);
  
  bodies.add(bird);
  
  for (int i = 0; i < 4; i++) {
    bodies.add(new Pipe(PIPE_START + PIPE_INTERVAL * i));
  }
}

void draw() {
  background(BLUE);
  
  boolean needNew = false;
  for (Body body : bodies) {
    body.accel(G);
    body.move();
    body.display();
    if ( body.loc.x < -Pipe.PIPE_SIZE) {
      needNew = true;
    } 
  }
  
  if (needNew) {
    bodies.remove(1);
    bodies.add(new Pipe(1800));
  }  
}

void keyPressed() {
  if (key == 32) {
    bird.jump();
  }    
}

void mousePressed() {
  bird.jump();
}
