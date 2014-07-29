/* Iteration example - BT */

void setup() {
 size(500,500); 
 noStroke();
}

void draw() {
  for (float i=0;i<100;i++) {
   fill(random(mouseY),random(mouseX),random(255),20);
   ellipse(random(width),random(height),30,30);
   
   // or try this
   // stroke(random(mouseY),random(mouseX),random(255),20);
   // line(random(width),random(height),random(width),random(height));
   
   // or this!
   // stroke(random(mouseY),random(mouseX),random(255),20);
   // line(random(width),random(height),width/2,height/2);
   
  }
}
