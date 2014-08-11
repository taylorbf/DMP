// A simple Particle class

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(0,.01);
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    lifespan = 70.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    
    PVector mouse = new PVector(mouseX,mouseY);
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.7;
  }

  // Method to display
  void display() {
    stroke(255,lifespan);
    fill(255,lifespan);
    ellipse(location.x,location.y,8,8);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

