/*Basic Video Pixel Access
  Goucher - Digital Media Programming FA14
  Ben Taylor
  Derived from Mirror by Daniel Shiffman

*/ 
 
import processing.video.*;

// Size of each cell in the grid, in pixels
int cellSize = 20;
//Initialize cols, rows, video capture
int cols, rows;
Capture video;


void setup() {
  size(640, 480);
  frameRate(30);
  noStroke();
  cols = width / cellSize;
  rows = height / cellSize;

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();
}


void draw() { 
  if (video.available()) {
    video.read();
    video.loadPixels();
  
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {
      
        // Where are we, pixel-wise?
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
      
        // Make a new color for this pixel of the video
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b);
      
        // Draw a rectangle with this color
        fill(c);
        rect(x, y, cellSize, cellSize);
      }
    }
  }
}
