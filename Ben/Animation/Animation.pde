/*
  Hi class,
  This animation library is nice!
  To use it, you first need to import the library.
  - Go to Sketch menu > Import Library > Add Library
  - Search for "Ani"
  - Select and install Ani
  This sketch should now work for you!
  More info at: http://www.looksgood.de/libraries/Ani/
*/

// Tell Processing that you want to use Ani
import de.looksgood.ani.*;

float x = 0;

void setup() {
  // Initialize Ani
  Ani.init(this);
}

void draw() {
  ellipse(x,50,20,20);
}

void mousePressed() {
  // Animate the variable x to pixel 100 over 1.5 seconds.
  Ani.to(this,1.5,"x",100);
  
  // If called from within a class
  // it will refer to variables of that class.
}
