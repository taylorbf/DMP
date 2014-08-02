
Ball redBall;
Ball greenBall;
Ball blueBall;
Back groundBack;
Back groundBack2;
Back groundBack3;
Back groundBack4;

void setup(){
  size (500,500);
  groundBack = new Back (0, 0, 0, 10,500,500);
  //groundBack2 = new Back (0, 0, 0, 100, 0, 0);
  //groundBack3= new Back (0, 0, 0, 100, 0, 0);
  //groundBack4= new Back (0, 0, 0, 100, 0, 0);
  greenBall = new Ball (255, 255, 0, 10, 0, -50);
  blueBall = new Ball (255, 125, 0, 10, 50, 50);
  redBall = new Ball (255, 0, 255, 10, -50, 50);
  noStroke();
}

void draw() {
  //makesblackbackgorund
  if(mousePressed){
  
  fill(0);
  rectMode(CORNER);
  rect(0,0,width,height);
   }
   //if(mousePressed){
  groundBack.backDisplay();
   //}
   

  for (int i=0; i<1000; i=i+10) {
    fill(#ffff00, random(50));
    rect(random(width), random(height),random(100),random(100));
  }
  for (int i=0; i<1000; i=i+5) {
    fill(#ff00ff, random(50));
    rect(random(width), random(height),random(50),random(50));
  }
  for (int i=0; i<1000; i=i+1) {
    fill(#FF7403, random(50));
    rect(random(width), random(height),random(10),random(10));
  }
  
  redBall.ballDisplay();
  blueBall.ballDisplay();
  greenBall.ballDisplay();
}

  
 
  
  
  

