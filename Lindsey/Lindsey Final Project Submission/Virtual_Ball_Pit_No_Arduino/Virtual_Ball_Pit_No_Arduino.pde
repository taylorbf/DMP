/*
Just in case anyone wants to test this out on their own, 
here's a version of my final sketch controlled by mouse movement,
rather than Arduino.
*/

Circle [] bubbles = new Circle [0];
 
 
void setup () {
 size (1200,700);
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
   
  float concentration;
   
  color r; 
  color g; 
  color b;

   
  float CircleSize;
  float grow;
   
  Circle () {
    x = mouseX;
    y = mouseY;
     
    velX = random (-30,30);
    velY = random (-10,10);
     
    concentration = 1;
    
    r = color (random(150,255),0,0,random(70,100));
    g = color (0, random(200,255),0,random(80,100));
    b = color (0,0,random (100,255),random(70,100));

          
    CircleSize = random (5,40);
    
   grow = 1.1;
  }
   
  void update () {
     
    velX *= concentration; //slow down 
    velY *= concentration;
     
    //add gravity
     
    velY+=1.2;
     
    x+=velX;
    y+=velY;
     
    CircleSize *= grow;
     
    fill (b);
    ellipse (x,y,CircleSize,CircleSize);
 
  if (mouseX > 0 && mouseX < 400) {
    fill(b);
    ellipse (x,y,CircleSize,CircleSize);
  }
    
  if (mouseX > 400 && mouseX < 800) {
    fill(r);
    ellipse (x,y,CircleSize,CircleSize);
  }
   
  if (mouseX > 800 && mouseX < width) {
    fill(g);
    ellipse (x,y,CircleSize,CircleSize);
  }
 }

}

