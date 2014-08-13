
RectThin rectThin = new RectThin();

class RectThin{
  float x = 125;
  float y = 60;
  float width = 150;
  float height = 15;
  float yinc = 0.5;
   
  void moveDown(){
    rect(x, y, width, height);
    y += yinc;
    if (y>=220 || y<=50){
      yinc *= -0.5;
    }
  }
}
 
