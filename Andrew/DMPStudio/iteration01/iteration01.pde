float grid = 10000;
float row = sqrt(bubbles);
float size;

PShape group;

void setup(){
  size(800, 450);
  size = height/row;
  

  
  PShape myShape = createShape();
  myShape.beginShape();
  myShape.vertex(0,0);
  myShape.vertex(100,-100);
  myShape.vertex(0,200);
  myShape.endShape(CLOSE);
}

void draw(){
 fill(#ffffff,20);
rect(0,0,width, height); 

for(float i=0;i<grid;i++){
 float x = (i%row) * size;
 float y = (i/row) * size;
 
  
}
  
}
