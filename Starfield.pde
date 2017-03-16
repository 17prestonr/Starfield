
//your code here

Particle[] particle;

void setup()
{
  size(400,400);
  particle = new Particle[100];
  for (int i = 0; i < particle.length; i ++){
    particle[i] = new NormalParticle();
  }
  particle[0] = new OddballParticle();
  particle[1] = new JumboParticle();
  
}
void draw()
{
  background(0);
  for (int i = 0; i < particle.length; i ++){
    particle[i].move();
    particle[i].show();
  }
}
class NormalParticle implements Particle
{
  double x, y, speed, angle;
  
  public NormalParticle(){
     x = 150;
     y= 150;
     speed = (Math.random() * 10);
     angle = (Math.random() * 2 * Math.PI);
   

  }
      
  public void move(){
    y += (Math.sin(angle) * speed);
    x += (Math.cos(angle) * speed);
   }
   
  public void show(){
    fill(255);
    noStroke();
    int dotColor = (int)(Math.random() * 255);
    fill(dotColor, dotColor, dotColor);
    ellipse((float)x,(float)y,10,10);
  }

}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  public double x, y, angle, speed;
  
  public OddballParticle(){
    x = 60;
    y = 60;
    speed = (Math.random() * 15);
    angle = Math.random() * 2 ;
  }
  
  void move(){
   y += angle;
   x += angle; 
   
  }
  
  void show(){
    background(0);
    noStroke();
    fill(72,255,253);
    rect((float)x, 80,80,(float)y);
  }
}
class JumboParticle extends NormalParticle
{
  public void show(){
    fill(234,71,26);
    ellipse((float)x,(float)y,50,50);
  }
}
