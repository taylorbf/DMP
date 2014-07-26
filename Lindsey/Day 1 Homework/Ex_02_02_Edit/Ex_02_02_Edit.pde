// Example 02-02 from "Getting Started with Processing" 
// by Reas & Fry. O'Reilly / Make 2010

void setup() {
  size(480, 120);
  smooth();
  background(255);
}

void draw() {

fill(#ffffff,20);
rect(0,0,width,height);
  if (mousePressed) {
    fill(#20C6BD);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

