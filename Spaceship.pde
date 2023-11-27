Spaceship bob = new Spaceship();
Star[] stars = new Star[500];
public void setup()
{
  size(500,500);
  for(int i  = 0; i < stars.length; i++)
    stars[i] = new Star();
}
public void draw()
{
  background(0);
  bob.show();
  bob.move();
  for(int i  = 0; i < stars.length; i++)
    stars[i].show();
}

public void keyPressed(){
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'd'){
    bob.turn(10);
  }
  if(key=='h'){
    bob.Hyperspace();
  }
  if(key == 'w'){
    bob.accelerate(.5);
  }
}
