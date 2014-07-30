float a = 0;

void setup(){
  size(600,600);
  
}

void draw(){
  
  
  
  strokeWeight(5);
  line(300,300,300,600);
  
  pushMatrix();
  translate(300,300); 
  rotate(TWO_PI/10.0*a);
  rect(0,0,100,100);
  a = (a + 1);
  println(a);
  popMatrix();
  
  
  
}
