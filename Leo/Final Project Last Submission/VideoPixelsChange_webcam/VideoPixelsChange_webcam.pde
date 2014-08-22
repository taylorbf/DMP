import codeanticode.syphon.*;
import processing.video.*;
PGraphics canvas;
SyphonServer server;
int cellSize = 10;
int cols, rows;
Capture video;


void setup() {
  size(480, 270, P3D);
  canvas = createGraphics(width, height, P3D);
  frameRate(30);
  cols = width / cellSize;
  rows = height / cellSize;
  server = new SyphonServer(this, "Processing Syphon");
    String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    video = new Capture(this, "name=Logitech Webcam C930e,size=480x270");
    video.start();     
  }
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
