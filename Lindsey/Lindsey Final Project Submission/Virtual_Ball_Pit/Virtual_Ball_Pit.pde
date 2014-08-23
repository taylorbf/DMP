
class Circle {
  
  float x;
  float y;
   
  float velX; // speed / velocity
  float velY;
   
  float concentration; //how many begin at once
   
  color r; 
  color g; 
  color b;

   
  float CircleSize;
  float grow;
   
  Circle () {
    x = val*20;
    y = 300;
     
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
 
  if (val >=0 && val < 25) {
    fill(b);
    ellipse (x,y,CircleSize,CircleSize);
  }
    
  if (val >=26 && val < 45) {
    fill(r);
    ellipse (x,y,CircleSize,CircleSize);
  }
   
  if (val >=46 && val < 200) {
    fill(g);
    ellipse (x,y,CircleSize,CircleSize);
  }
 }

}


