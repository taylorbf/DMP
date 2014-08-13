
Triangle2 myTri2 = new Triangle2();

class Triangle2{
  float x = 0;
  float y = 100;
  float speed = 1;
  
  void move(){
    x += speed;
    translate(x,0);
    triangle(70,100,100,50,130,100);
    if (x > 100 || x < 0){
      speed = speed*-1;
    }
    
  }
}
