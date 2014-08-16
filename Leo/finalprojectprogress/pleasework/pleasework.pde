import processing.video.*;
import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;


void setup() {
  size(400,400, P3D);
  canvas = createGraphics(400, 400, P3D);
  
  // Create syhpon server to send frames out.
  server = new SyphonServer(this, "Processing Syphon");
}

void draw() {
  canvas.beginDraw();
  for (int i=0; i<1000; i=i+20) {
  canvas.fill(#ffff00, random(50));
  canvas.rect(random(width), random(height),random(100),random(100));
  }
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}
