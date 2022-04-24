static final int SCREEN_WIDTH = 1000;
static final int SCREEN_HEIGHT = 1000;

final color RED = color(255, 0, 0);
final color YELLOW = color(255, 0, 255);
final color GREEN = color(0, 255, 255);
final color BLUE = color(255, 255, 0);

ArrayList<PassePartout> frames = new ArrayList();
PassePartout p;

void settings() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
}

void setup() {
  frameRate(144);
  
  int passeCount = 25;
  
  for (int i = 0; i < passeCount; i++) {
    frames.add(new PassePartout(SCREEN_WIDTH/passeCount * i, color(255*sin(PI/33*i), 255*sin(PI/160*i), 255*sin(PI/33*i)), 0, 0));
  }
}

void draw() {
  translate(SCREEN_WIDTH / 2, SCREEN_WIDTH / 2);
  background(0);
  

  float count = 1;
  for (PassePartout frame : frames) {
    frame.loc.x = (400 - pow(count, 2)) * sin(PI * frameCount/200.0 + count/10);
    frame.loc.y = (50 - count ) * cos(PI/2 * frameCount/200.0 + count/10);
    frame.display();
    rotate(sin(PI * frameCount/ 600) / PI / 5);
    count++;
  }
}
