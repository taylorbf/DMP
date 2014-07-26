// Day 1 Technical Sketch, Part D


// Fix this sketch so that only the current circle is drawn,
// and the old circles are erased.

void draw() {
  fill(#000000);
  rect(0,0,width,height);
  fill(#439B98);
  ellipse(mouseX,mouseY,40,40);
}
