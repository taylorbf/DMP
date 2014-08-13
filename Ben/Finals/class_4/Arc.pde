// Now you can define the location of the shape when you create it
Arc myArc = new Arc(0,0);
Arc myArc2 = new Arc(200,0);

class Arc{
  float x = 80;
  float y = 70;
  float w = 100;
  float h = 35;
  float arcStop = PI;
  float yinc = 1;
  float xinc = 0.2;
  // I added these two variables, short for "translate x"
  // and "translate y"
  float tx = 0;
  float ty = 0;
  
  // Creating a constructor function like this is really helpful.
  // It lets you pass in parameters when you create each new arc (called a "class instance" of class Arc).
  // For example, when we say new Arc(0,200)
  // set_tx will be 0 and set_ty will be 200
  // Think of the parentheses ( ) as a tube to pass in numbers unique to each class instance.
  Arc(float set_tx, float set_ty) {
    tx = set_tx;
    ty = set_ty;
  // You might try also adding parameters for xinc and yinc to give each shape its own movement path.
  // Really you can add as many parameters as you like... 
  // for any variable that you want to be unique for this class instance
  }
   
  void move(){
    // Now we're drawing the arc at x+tx and y+ty
    // using tx and ty to offset the location of the shape.
    arc(x+tx,y+ty,w,h,0,arcStop);
    
    y += yinc;
    if (y>=200 || y<=60){
      yinc *= -0.5;
    }
    
    x += yinc;
    if (x>=160 || x<=100){
      xinc *= -1;
    }
  }
}
 
