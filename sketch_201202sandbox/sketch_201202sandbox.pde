// execute just once
void setup() {
  size(1200, 800); // window size
  background(0, 0, 0);
}

int windowSizeX = 1200;
int windowSizeY = 800;
int locationX = windowSizeX / 2;
int locationY = windowSizeY / 2;
int radius = 180;

// execute 60 times per one second by default
void draw() {
  frameRate(90);
  
  // refresh window by drawing white rectangular
  fill(0, 0, 0); // r, g, b, opacity
  noStroke();
  rect(0, 0, windowSizeX, windowSizeY);

  locationX += random(-3, 3);
  
  int randRed = int(random(0, 255));
  int randGreen = int(random(0, 255));
  int randBlue = int(random(0, 255));
  noFill();
  stroke(randRed, randGreen, randBlue);
  ellipse(locationX, locationY, radius, radius); // draw circle (x, y, rx, ry)
}
