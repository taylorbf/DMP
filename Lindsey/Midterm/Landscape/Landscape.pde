
void setup(){
  size(1000,600);
  background(#101E43);
  for (int i=0;i<galaxy.length;i=i+1) {
    //galaxy[i]= new Star();

  galaxy[i]= new Star(random(width), random(height));
  } 
   for (int i=0;i<galaxy.length;i=i+1) {
    galaxy[i].blink();
  }
}


void draw(){
  noStroke();
//Mountain
fill(#0E9B0C);
triangle(width-340,height, 0,height,height/2,height-400); 

//ball
fill(255);
  float bx = constrain(mouseX, 55, 600);
  ellipse(bx,580,40,40);

//tall building
noStroke();
fill(#F2F0AB);
rect(width*.8,height-300,100,300);

//arch
strokeWeight(40);
stroke(#BB46D3);
noFill();
arc(width/1.5, height, 550, height, 0, TWO_PI);


//small building
  noStroke();
  fill(color(map(mouseX, 0, width, 0, 255)));
  rect(width*.68,height-150,150,150);
  //translate(mouseX, mouseY);
  }
