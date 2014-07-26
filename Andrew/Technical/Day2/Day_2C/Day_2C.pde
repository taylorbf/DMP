/* Day 2 Technical Sketches, Part C
   Intro Digital Media Programming FA14
   Ben Taylor                            */

// Use a function to make this code more efficient.
// Hint: it will help to give your function an argument.

void setup() {
  
}

void draw() {
  
drawEllipse(50);
drawEllipse(10);
drawEllipse(80);
  
  
}

void drawEllipse(int x){
    ellipse(x,10,10,10);
    ellipse(x,20,10,10);
    ellipse(x+10,10,10,10);
    ellipse(x+10,20,10,10);
}
