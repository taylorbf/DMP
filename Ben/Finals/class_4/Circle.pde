
Circle myCircle = new Circle();

class Circle{
  float x = 50;
  float y = 50;
  float xinc = 0.5;
  float yinc = 2;  
  
  void move(){
    ellipse(x,y,40,40);
    
    x = x+xinc;
    if (x >= 200 || x <= 50){
      xinc *= -1;
    }

    y = y+yinc;
    if (y >= 200 || y <= 50){
      yinc *= -1;
    }
    
  }

}

