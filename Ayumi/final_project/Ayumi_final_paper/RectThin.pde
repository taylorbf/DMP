
RectThin rectThin = new RectThin(150,70,0.5);
RectThin rectThin2 = new RectThin(350,80,1);
RectThin rectThin3 = new RectThin(700,100,0.6);
RectThin rectThin4 = new RectThin(170,320,0.8);
RectThin rectThin5 = new RectThin(430,300,0.4);
RectThin rectThin6 = new RectThin(650,340,0.3);
RectThin rectThin7 = new RectThin(200,570,0.7);
RectThin rectThin8 = new RectThin(400,550,1);
RectThin rectThin9 = new RectThin(670,580,1.3);

class RectThin{
  float x = 0;
  float y = 0;
  float width = 120;
  float height = 15;
  float incy = 0.5;

  //translate x and traslate y
  float tx = 0;
  float ty = 0;
  
  RectThin(float set_tx, float set_ty, float set_incy){
    tx = set_tx;
    ty = set_ty;
    incy = set_incy;
  }
   
  void moveDown(){
    rect(x+tx, y+ty, width, height);
    y += incy;
    if (y>=130 || y<=0){
      incy *= -1;
    }
  }
  
}
 
