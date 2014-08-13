
RectWide rectWide = new RectWide();

class RectWide{
  float x = 80;
  float y = 150;
  float width = 40;
  float height = 90;
   
  void wider(){
    rect(x, y, width, height);
    width = width + 0.3;
    if (width >= 40 && width >=100){
      width = width*-1;
    }
  }
}
 

