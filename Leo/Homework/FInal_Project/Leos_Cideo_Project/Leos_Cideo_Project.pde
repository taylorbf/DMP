/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
*/

import processing.video.*;

Capture video;

void setup() {
  size(1440, 1280);
  /* Define and start video capture */
  video = new Capture(this, width, height);
  video.start();
}

void draw() { 
  println(frameRate);
  if (video.available()) {
    /* Read video frame and make it black/white */
    video.read();
    video.loadPixels();
    
    // Loop through video pixel matrix
    for (int i = 0; i < video.pixels.length; i++) {
       // Get color of this pixel
       color bw = video.pixels[i];
       // Get its brightness
       float howbright = brightness(bw);
       // Round its brightness to either 0 or 255
       //howbright = round(howbright/255)*255;
       color c1;
       if (howbright<=84) {
          c1 = 0x4DFFFF00;
       } else if (howbright>=85 && howbright<=169) {
          c1 = 0x4DFF00FF;
       }  else {
          c1 = 0x4DFF7D00;
       }
       // Set the pixel to this new color
       video.pixels[i] = c1;
    }
    video.updatePixels();
    // Draw the video
    image(video, mouseX, mouseY, height/12, width/14);
  }
}

