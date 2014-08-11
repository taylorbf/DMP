Circle [] bubbles = new Circle [0];
 
 
void setup () {
 size (800,800);
 smooth ();
 noStroke ();
 frameRate(15);
}
 
 
void draw () {
  println(frameRate);

  background (255); 
   
  bubbles = (Circle[]) append(bubbles, new Circle());
   
   for (int i=0; i<bubbles.length; i++) {
  bubbles[i].update();
   }
   
  if (bubbles.length>40) {
    bubbles = (Circle[]) subset(bubbles,1);
    //deletes oldest Circle so that no more than 40 Circles are present
  }
   
}
 
class Circle {
  
  float x;
  float y;
   
  float velX; // speed / velocity
  float velY;
   
  float drag;
   
   
  float CircleSize;
  float grow;
   
  Circle () {
  //follows mouse movement
    x = mouseX;
    y = mouseY;
     
    velX = random (-30,30);
    velY = random (-10,10);
     
    drag = 1;
          
    CircleSize = random (5,40);
   //set size between two values so Circles random size
    
   grow = 1.1;
  }
   
  void update () {
     
    velX *= drag; //makes Circles slow down 
    velY *= drag;
     
    //add gravity
     
    velY+=1;
     
    x+=velX;
    y+=velY;
     
    CircleSize *= grow;
     
    fill (0,0,random (100,255),random(90,100));
    ellipse (x,y,CircleSize,CircleSize);
 
  if (mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2) {
    fill(0,0,random (100,255),random(70,100));
    ellipse (x,y,CircleSize,CircleSize);
}
    
  if (mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height/2) {
    fill(random(200,255),random(70,125),random(100,155),random(70,100));
    ellipse (x,y,CircleSize,CircleSize);
  }
   
  if (mouseX > 0 && mouseX < width/2 && mouseY > height/2 && mouseY < height) {
    fill(random(30,75),random(200,255),random(1,50),random(70,100));
    ellipse (x,y,CircleSize,CircleSize);
  }
   
  if (mouseX > width/2 && mouseX < width && mouseY > height/2 && mouseY < height) {
    fill(random(200,255),random(200,255),random(1,50),random(90,100));
    ellipse (x,y,CircleSize,CircleSize);
  }
  }

}

