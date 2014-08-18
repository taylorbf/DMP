
RectWide rectWide = new RectWide(80,150,1.1);
RectWide rectWide2 = new RectWide(370,100,0.7);
RectWide rectWide3 = new RectWide(620,140,2.1);
RectWide rectWide4 = new RectWide(150,400,1);
RectWide rectWide5 = new RectWide(400,350,0.5);
RectWide rectWide6 = new RectWide(630,390,1.2);
RectWide rectWide7 = new RectWide(180,650,0.1);
RectWide rectWide8 = new RectWide(450,600,0.8);
RectWide rectWide9 = new RectWide(720,590,0.7);

class RectWide{
  float x = 0;
  float y = 0;
  float width = 40;
  float height = 90;

  //translate x and traslate y
  float tx = 0;
  float ty = 0;
  float widthInc = 0;
  
  RectWide(float set_tx, float set_ty, float set_widthInc){
    tx = set_tx;
    ty = set_ty;
    widthInc = set_widthInc;
    
  }
   
  void wider(){
    rect(x+tx, y+ty, width+widthInc, height);
    width += widthInc;
    if (width >= 40 && width >=80){
      width *= -1;
    }
  }
}
 

