float grid = 400;
float row = sqrt(grid);
float size;

PShape myShape;

void setup(){
  //Must add P2D to the size...I didn't know that!
  size(800, 450, P2D);
  size = height/row;
  
  myShape = createShape();
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
    shape(myShape,x,y);
  }
}
