/**
 * PrimitivePShape. 
 * 
 * Using a PShape to display a primitive shape (in this case, ellipse). 
 */


// The PShape object
PShape box;

void setup() {  
  size(640, 360, P2D);
  smooth();
  // Creating the PShape as an ellipse
  //circle = createShape(ELLIPSE, 0, 0, 100, 50);
}

void draw() {
  background(51);
  noStroke();
  box = createShape(RECT,width*.68,height-150,150,150);
  // We can dynamically set the stroke and fill of the shape
  //circle.setStroke(color(255));  
  //circle.setStrokeWeight(4);
  box.setFill(color(map(mouseX, 0, width, 0, 255)));
  // We can use translate to move the PShape
 // translate(mouseX, mouseY);
  // Drawing the PShape
  shape(box);
}
