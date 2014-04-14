int currentFrame = 0, lastTime = 0;
PImage[] frames = new PImage[24];
void setup() {
  size(640, 200);
  strokeWeight(12);
  smooth();
  background(204);
  for (int i = 0; i < frames.length; i++) {
    frames[i] = get(); // Create a blank frame
  }
}
void draw() {
  int currentTime = millis();
  if (currentTime > lastTime+30) {
    nextFrame();
    lastTime = currentTime;
  }
  if (mousePressed == true)   line(pmouseX, pmouseY, mouseX, mouseY);
}
void nextFrame() {
  frames[currentFrame++] = get(); // Get the display window
  if (currentFrame >= frames.length)     currentFrame = 0;
  image(frames[currentFrame], 0, 0);
}
