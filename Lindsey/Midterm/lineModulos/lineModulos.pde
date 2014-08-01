float inc = TWO_PI/100.0;
float a = 0;

void setup(){
 size(800,450); 
 frameRate(20);
}

void draw(){
  fill(#ffffff);
  rect(0,0,width,height);
 for(int i = 0; i< 505; i++){
  color c = color((i*8)%(i+100),(i*3)%255,128);
  strokeWeight(5);
  stroke(c);
  float x = ((i*7)%800);
  line(x,50+sin(a)*50,x,height-50+cos(a)*50);  
 a += inc; 
 }

println(a);
}
