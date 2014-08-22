import codeanticode.syphon.*;

PGraphics canvas;
SyphonServer server;


void setup() {
  size (displayWidth, displayHeight, P3D);
  canvas = createGraphics(displayWidth, displayHeight, P3D);
  server = new SyphonServer(this, "Processing Syphon");

  
}

void draw() {
  canvas.beginDraw();
  
  for (int i=0; i<1000; i=i+20) {
    canvas.fill(#ffff00, random(50));
    canvas.noStroke();
    canvas.rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+10) {
    canvas.fill(#ff00ff, random(50));
    canvas.noStroke();
    canvas.rect(random(width), random(height),random(50),random(50));
  }
  
  for (int i=0; i<1000; i=i+5) {
    canvas.fill(#FF7403, random(50));
    canvas.noStroke();
    canvas.rect(random(width), random(height),random(10),random(10));
  }
  for (int i=0; i<1000; i=i+1) {
    canvas.fill(#ff0000, random(50));
    canvas.noStroke();
    canvas.rect(random(width), random(height),random(10),random(10));
  }
   if(mousePressed){
  canvas.fill(0);;
  canvas.rect(0,0,width,height);
  }
  noCursor();
  rectMode(CENTER);
  canvas.fill(#ffff00, random(30));
  canvas.rect(mouseX+150,mouseY, 300,300);
  noCursor();
  rectMode(CENTER);
  canvas.fill(#ff00ff, random(10));
  canvas.rect(mouseX-150,mouseY, 300,300);
  noCursor();
  rectMode(CENTER);
  canvas.fill(#FF7403, random(20));
  canvas.rect(mouseX,mouseY+150, 300,300);
  noCursor();
  rectMode(CENTER);
  canvas.fill(#ff0000, random(10));
  canvas.rect(mouseX,mouseY-150, 300,300);
  
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendImage(canvas);
}

