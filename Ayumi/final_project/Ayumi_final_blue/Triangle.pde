
Triangle myTri = new Triangle(0,0,0.2);
Triangle myTri2 = new Triangle(230,100,0.5);
Triangle myTri3 = new Triangle(530,70,0.4);
Triangle myTri4 = new Triangle(30,320,0.5);
Triangle myTri5 = new Triangle(300,250,1);
Triangle myTri6 = new Triangle(550,300,0.7);
Triangle myTri7 = new Triangle(10,610,1.2);
Triangle myTri8 = new Triangle(330,500,0.3);
Triangle myTri9 = new Triangle(550,560,0.8);

class Triangle{
  float x = 0;
  float y = 0;  

  //translate x and traslate y
  float tx = 0;
  float ty = 0;
  float incx = 0;
  
  Triangle(float set_tx, float set_ty, float set_incx){
    tx = set_tx;
    ty = set_ty;
    incx = set_incx;
  }
  
  void move(){
    x += incx;
    translate(x,0);
    triangle(70+tx,100+ty,100+tx,50+ty,130+tx,100+ty);
    if (x > 80 || x < 0){
      incx *= -1;
    }
    //restore the matrix to its original state
    translate(-x,0);
    
  }
}
