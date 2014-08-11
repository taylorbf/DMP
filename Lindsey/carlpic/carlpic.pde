PImage photo;
ParticleSystem ps;

void setup() {
  size(1000, 626);
  photo = loadImage("IMAG1671_small.jpg");
  ps = new ParticleSystem(new PVector(400,60));

}

void draw() {
  image(photo, 0, 0);
  ps.addParticle();
  ps.run();


if(mousePressed){
  noStroke();
  fill(#FC1919,70);
  ellipse(542,399,10,10);
  filter(BLUR,1);

}
}


