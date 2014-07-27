float r;
float g;
float b;
float a;
float diam;
float x;
float y;
float w;
void setup(){
  size(700,700);
  noStroke();
}
void mousePressed() {
fill(map(mouseX,0,width,0,255),map(mouseY,0,width,0,255), 200);
rect(0,0,width,height);
}
void draw(){
 {
r = (0);
g = random(255);
b = random(255);
a = random(255);
w=  random (50);
diam = random(200);
x = random(width);
y = random(height);
fill(r,g,b,a);
ellipse(x,y,diam,diam);
}
  


fill(map(mouseX,0,width,0,255),map(mouseY,0,width,0,255), 200);
ellipse(mouseX,mouseY,50,50);
}
