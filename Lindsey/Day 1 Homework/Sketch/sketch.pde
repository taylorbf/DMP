void setup() {

size(500,500);
}
void draw(){
//Randy's face
noStroke();
fill(0,80,250);
rectMode(CENTER);
rect(250,250,400,400);
noStroke();

//Randy's eyes
fill(255);
ellipseMode(CENTER);
ellipse(160,160,60,70);
noStroke();
fill(0);
ellipse(160,160,20,25);
noStroke();
fill(255);
ellipse(330,160,60,70);
noStroke();
fill(0);
ellipse(330,160,20,25);
fill(0);

//Randy's Antenni
//stroke(0);
//strokeWeight(4);
//line(245,50,200,15);
//line(255,50,300,15);



//Randy's nose
//noStroke();

 if (mousePressed) {
    fill(0,80,250);
  } else {
    fill(255);
 ellipse(250,250,20,20);
  }
//Randy's mouth
fill(#ffffff);
rect(250,340,180,30);
rect(250,375,180,30);

//Randy's ears
noStroke();
fill(0,80,250);
ellipse(440,200,60,80);
ellipse(60,200,60,80);
stroke(0);
}


