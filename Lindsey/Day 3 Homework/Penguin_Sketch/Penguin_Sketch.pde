Penguin penguincopy = new Penguin(100,100);
Penguin penguincopy1 = new Penguin(200,200);
Penguin penguincopy2 = new Penguin(400,400);


void setup() {
  background(204);
  size(500, 500);


  smooth();
}

void draw() { 
   penguincopy.make();
   penguincopy1.make();
   penguincopy2.make();

}

class Penguin{
  
 float x=0;
 float y=0;

  Penguin(float sety, float setx){
    y = sety;
    x = setx;
  }  

  void make(){
  translate(x, y);
  stroke(0);
  strokeWeight(70);
  line(0, -35, 0, -65); // Body
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35);  // Left eye dome
  ellipse(17.5, -65, 35, 35);   // Right eye dome
  arc(0, -65, 70, 70, 0, PI);   // Chin
  fill(0);
  ellipse(-14, -65, 8, 8);  // Left eye
  ellipse(14, -65, 8, 8);   // Right eye
  quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
  }

}

