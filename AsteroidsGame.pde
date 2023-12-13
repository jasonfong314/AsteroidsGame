Star[] stars = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <shoootah> shots = new ArrayList <shoootah>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i<10; i++) {
    asteroids.add(new Asteroid());
  }
  for (int i  = 0; i < stars.length; i++)
    stars[i] = new Star();
}
public void draw()
{
  background(0);
  for (int i  = 0; i < stars.length; i++) {
    stars[i].show();
  }
  bob.show();
  bob.move();
  for (int j  = 0; j < shots.size(); j++) {

    shots.get(j).move();
    shots.get(j).show();
  }
  for (int j  = 0; j < shots.size(); j++) {
    for (int a = 0; a<asteroids.size(); a++) {
      float m = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)asteroids.get(a).getX(), (float)asteroids.get(a).getY());
      if (m < 10) {
        asteroids.remove(a);
        shots.remove(j);
        break;
      }
    }
  }
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
    if (d < 27) {
      asteroids.remove(i);
    }
  }
}

public void keyPressed() {
  if (key == 'a') {
    bob.turn(-15);
  }
  if (key == 'd') {
    bob.turn(15);
  }
  if (key=='h') {
    bob.Hyperspace();
  }
  if (key == 'w') {
    bob.accelerate(.5);
  }
  if (key == 's') {
    bob.accelerate(.5);
  }
  if (key == ' ')
    shots.add(new shoootah(bob));
}
