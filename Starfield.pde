Particle[] stars = new Particle[1000];

void setup()
{
  size(500, 500);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Particle();
  }
  stars[0] = new Sun();
}
void draw()
{
  background(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
    stars[i].move();
    stars[i].slow();
    stars[i].swirl();
  }
}
class Particle
{
  double myX, myY, speed, angle, myColor, radius;
  Particle() {
    myX = 250+Math.random()*50-25;
    myY = 250+Math.random()*50-25;
    speed = Math.random()*11-1;
    angle = Math.random()*3*Math.PI-1;
    myColor = Math.random()*128+128;
    radius = Math.random()*5+20;
  }
  void move() {
    myX += Math.cos(angle)*speed;
    myY += Math.sin(angle)*speed;
  }
  void show() {
    noStroke();
    fill((int)myColor, (int)myColor/2, (int)myColor/2);
    ellipse((float)myX, (float)myY, (float)radius, (float)radius);
  }
  void slow() {
    if (speed >= 0) {
      speed -= 0.1;
    } else {
      speed = 1;
    }
  }
  void swirl() {
    angle += Math.PI/360;
  }
}

class Sun extends Particle
{
  double myX, myY, speed, angle, myColor, radius, opacity;
  Sun() {
    myX = Math.random()*350;
    myY = Math.random()*350;
    speed = Math.random()*20;
    angle = Math.random()*3*Math.PI-1;
    myColor = color(0, 0, 60);
    radius = 50;
    opacity = 64;
  } 
  void move() {
    myX += Math.cos(angle)*0.1;
    myY += Math.sin(angle)*0.1;
  }
  void show() {
    noStroke();
    fill(255, 128, 64, 128);
    ellipse((float)myX, (float)myY, 250, 250);
  }
}
