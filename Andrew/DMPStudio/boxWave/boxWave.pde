float grid = 100;
float row = sqrt(grid);
float size;

float a = 0;
float inc = TWO_PI/25.0;

PShape group;

void setup(){
  size(800, 800);
  size = height/row;
  println(row);
  println(size);
}

void draw(){
fill(#ffffff,20);
rect(0,0,width, height); 
 
for(float i=0;i<grid;i++){
 float x = (i%row) * size;
 float y = (i/row) * size;
 
 fill((i*sin(a))*2%255,i%128, 128);
 rect(x,y,size,size);
 a += inc;
  println(x);
 // println(y);
  
  }
 
  
}
