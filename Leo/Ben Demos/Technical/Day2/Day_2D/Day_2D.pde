/* Day 2 Technical Sketches, Part D
   Intro Digital Media Programming FA14
   Ben Taylor                            */

// Use map() to make this sketch output 2, 2.5, 3, 3.5, 4

void setup() {
  float value = 0;
  float i = map(value, 0, 5, 0.5, 4.5);
  for (float i=0; i<5; i++) {
    println(i);
  }
  
}

