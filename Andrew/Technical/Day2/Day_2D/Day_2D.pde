/* Day 2 Technical Sketches, Part D
   Intro Digital Media Programming FA14
   Ben Taylor                            */

// Use map() to make this sketch output 2, 2.5, 3, 3.5, 4

void setup() {
  
  for (int i=0; i<5; i++) {
    float mapped = map(i,0,4,2,4);
    println(mapped);
  }
  

  
}

