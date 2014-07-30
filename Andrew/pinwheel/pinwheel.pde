float a = 0;

void setup(){
  size(600,600);
  
}

void draw(){
  
  
  
  strokeWeight(5);
  line(300,300,300,600);
  
  translate(300,300); 
  rotate(TWO_PI/50.0*a);
  fill(random(255),random(255),255);
  rect(0,0,100,100);
  a = (a + 1);
  println(a);
  
  
  
}
