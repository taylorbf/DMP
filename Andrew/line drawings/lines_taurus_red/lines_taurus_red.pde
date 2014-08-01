float x1,y1,x2,y2;

float a = 0;
float rad =201;
float inc = TWO_PI/rad;

float a1 = 0;
float rad1 = 200;
float inc1 = TWO_PI/rad1;

float r=0;
float g=0;
float b=0;
float rinc = 1;
float ginc= 2;
float binc=3;

void setup(){
 size(1000,800); 
 background(255);
 
}

void draw(){
    r += rinc;
    g += ginc;
    b += binc;
    println(b);
    if(r <=0 || r>=255){
      rinc = rinc*-1;
    }
      if(g <=0 || g>=1){
      ginc = ginc*-1;
    }
      if(b <=0 || b>=1){
      binc = binc*-1;
    }
    
    stroke(r,g,b);
   
    x1 = sin(a1)*rad1+width/2;
    y1 = cos(a1)*rad1+height/2;
    x2 = x1+sin(a)*rad;
    y2 = y1+cos(a)*rad;
    
    strokeWeight(0.5);
    line(x1,y1,x2,y2);
    
    a+=inc;
    a1+=inc1;
  
}


