Guy guy = new Guy();
Tower tower = new Tower();

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
  guy.display();
  tower.display();
  tower.stretch();

//arch
strokeWeight(40);
stroke(#BB46D3);
noFill();
arc(width/1.5, height, 550, height, 0, TWO_PI);


//small building
  noStroke();
  float r = map(mouseX,5,width,5,255);
  float g = map(mouseX,250,width,225,200);
  float b = map(mouseX,230,width,250,180);
  
  fill(color(r,g,b));
  rectMode(CORNER);
  rect(width*.68,height-150,150,150);
  //translate(mouseX, mouseY);
  }
