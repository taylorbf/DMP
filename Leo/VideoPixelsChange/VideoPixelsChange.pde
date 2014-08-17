import codeanticode.syphon.*;
import processing.video.*;
PGraphics canvas;
SyphonServer server;
int cellSize = 20;
int cols, rows;
Capture video;


void setup() {
  size(640, 480, P3D);
  canvas = createGraphics(width, height, P3D);
  frameRate(30);
  cols = width / cellSize;
  rows = height / cellSize;
  server = new SyphonServer(this, "Processing Syphon");

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();
}


void draw() { 
    if (video.available()) {
        video.read();
        video.loadPixels();
  
    for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; 
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        float a = 50;
        color c = color(r+255, g, b-255, a);
      
        canvas.beginDraw();
        canvas.noStroke();
        canvas.fill(c);
        canvas.rect(x, y, cellSize, cellSize);
        canvas.endDraw();
      image(canvas, 0, 0);
      server.sendImage(canvas);
      }
    }
  }
}
