/* Day 2 Technical Sketches, Part A
   Intro Digital Media Programming FA14
   Ben Taylor                            */

// Use a loop to make this code more efficient.

void setup() {
   size(220, 40);
   background(204);

}

void draw(){
  // define counter(i); do it 10 times; 3 
 for(float i=0;i<10;i++){
  ellipse((i+1)*20,20,20,20);

//*also works*  
//  for(float i=1;i<11;i++){
//  ellipse(i*20,20,20,20); 
}
 
//original   
  //ellipse(20,20,20,20);
  //ellipse(40,20,20,20);
  //ellipse(60,20,20,20);
  //ellipse(80,20,20,20);
  //ellipse(100,20,20,20);
  //ellipse(120,20,20,20);
  //ellipse(140,20,20,20);
  //ellipse(160,20,20,20);
  //ellipse(180,20,20,20);
  //ellipse(200,20,20,20);
   
   
}
