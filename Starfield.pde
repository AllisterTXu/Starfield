Particle[] stars = new Particle[1000];

void setup()
{
	size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Particle();
  }
  //stars[0] = new Comet();
}
void draw()
{
  background(32);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
    stars[i].move();
  }
}
class Particle
{
	double myX, myY, speed, angle, myColor, radius;
  Particle(){
    myX = 250+Math.random()*50-25;
    myY = 250+Math.random()*50-25;
    speed = Math.random()*11-1;
    angle = Math.random()*3*Math.PI-1;
    myColor = Math.random()*128+128;
    radius = Math.random()*5+20;
  }
  void move(){
    myX += Math.cos(angle)*speed;
    myY += Math.sin(angle)*speed;
    
  }
  void show(){
    noStroke();
    fill((int)myColor);
    ellipse((float)myX, (float)myY, (float)radius, (float)radius);
  }
}

class OddballParticle //inherits from NormalParticle
{
	//your code here
}
