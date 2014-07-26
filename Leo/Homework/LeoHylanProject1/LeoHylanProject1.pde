
void setup(){
  size(500,500);
}
void draw(){
  smooth(); //antialiasing
  fill(#ffffff,20); //uses color alpha channel as aprameters
  rectMode (CENTER); //PUTS THE CURSOR IN THE MIDDLE
  rect(mouseX,mouseY,100,100);
fill(mouseX+100,mouseY+100);
ellipse(mouseX,mouseY,200,200);
fill(#FFFFFF,20);
ellipse(250,250,500,500);//this is a colored ellipse-the first 
//two numbers are where the center point is, the second set is the zize
}
void mousePressed() {
background(mouseX,mouseY, 0);
}
