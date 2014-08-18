
Circle myCircle = new Circle(0,0,1,0.8);
Circle myCircle2 = new Circle(300,0,0.5,1);
Circle myCircle3 = new Circle(550,0,1,0.3);
Circle myCircle4 = new Circle(50,300,0.1,1);
Circle myCircle5 = new Circle(300,300,0.4,0.1);
Circle myCircle6 = new Circle(550,300,1,0.5);
Circle myCircle7 = new Circle(50,550,1.3,0.5);
Circle myCircle8 = new Circle(300,550,0.7,0.2);
Circle myCircle9 = new Circle(550,550,0.3,0);

class Circle{
  float x = 50;
  float y = 50;
  float incx = 1;
  float incy = 1;

  //translate x and traslate y
  float tx = 0;
  float ty = 0;
  
  float set_incx = 0;
  float set_incy = 0;
  
  Circle(float set_tx, float set_ty, float set_incx, float set_incy){
    tx = set_tx;
    ty = set_ty;
    incx = set_incx;
    incy = set_incy;
  }
  
  void move(){
    ellipse(x+tx,y+ty,30,30);
    
    x += incx;
    if (x >= 150 || x <= 30){
      incx *= -1;
    }

    y += incy;
    if (y >= 150 || y <= 50){
      incy *= -1;
    }
    
  }

}

