Guy guy = new Guy();
Tower tower = new Tower();
PenroseLSystem ds;


import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
CustomEasing myOwnEasing = CustomEasing.create("myOwnEasing","[{s:0,cp:0.383,e:0.644},{s:0.644,cp:0.905,e:1.044},{s:1.044,cp:1.183,e:1.012},{s:1.012,cp:0.841,e:1}]");

float x = 500;
float y = 400;
Ani aniX;
Ani aniY;

void setup(){
  size(1000,600);
  background(#101E43);
  
  ds = new PenroseLSystem();
  ds.simulate(4);
  
  //GALAXY
  for (int i=0;i<galaxy.length;i=i+1) {
  galaxy[i]= new Star(random(width), random(height));
  } 
   for (int i=0;i<galaxy.length;i=i+1) {
    galaxy[i].blink();
  }
  
  tower.display();
  
  //MOUNTAIN ANI
  Ani.init(this);
  aniX = Ani.to(this, 1, "x", random(0,width), myOwnEasing );
  aniY = Ani.to(this, 1, "y", random(0,height), myOwnEasing );
  //MOUNTAIN ANI END
}


void draw(){
  noStroke();

  }


//ANIMATE TOWER  
  tower.stretch();
  tower.display();
 
     pushMatrix();
     translate(365, -25);
     ds.render();
     popMatrix();  


//arch
strokeWeight(40);
stroke(#BB46D3);
noFill();
  arc(width/1.5, height, 550, x, 0, TWO_PI);

//Mountain
  noStroke();
  fill(#0E9B0C);
  triangle(660,height, 0,height, 300,y); 
  aniY = Ani.to(this, 1, "y", max(y-15,200), myOwnEasing);

//ANIMATE GUY
  fill(255);
  noStroke();
  guy.display();
  guy.walk();


//small building
  noStroke();
  float r = map(mouseX,5,width,20,255);
  float g = map(mouseX,200,width,225,200);
  float b = map(mouseX,200,width,250,180);
  fill(color(r,g,b));
  rectMode(CORNER);
  rect(680,height-150,150,150);
}
 

void keyPressed() {
  if (key == ' ') {
    if (aniY.isPlaying()) {
      aniY.pause();
    }
    else {
      aniY.resume();
    } 
  }
   if (key == 'n') {  
  fill(#101E43);
  rect(0,0,width,height);
  
 
 //GALAXY
  for (int i=0;i<galaxy.length;i=i+1) {
  galaxy[i]= new Star(random(width), random(height));
  }   for (int i=0;i<galaxy.length;i=i+1) {
    galaxy[i].blink();
  }
   //GALAXY END
    }
    else {
     fill(#100043);
     rect(0,0,width,height);
    }
}

void mouseReleased() {
  aniX = Ani.to(this, 1, "x", mouseY, myOwnEasing);
}
