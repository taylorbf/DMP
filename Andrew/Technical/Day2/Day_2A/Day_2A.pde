/* Day 2 Technical Sketches, Part A
   Intro Digital Media Programming FA14
   Ben Taylor                            */

// Use a loop to make this code more efficient.

void setup() {
   size(220, 40);
   
   int i = 0;
   while(i<10){
   ellipse((i+1)*20,20,20,20);
   i++;
   }
   
}
