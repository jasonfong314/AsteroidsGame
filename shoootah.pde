
class shoootah extends Floater {
  public shoootah (Spaceship theShip) {
    //   public shoootah (){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getSpeedX();
    myYspeed = theShip.getSpeedY();
    myPointDirection = bob.getPointDirection();
    accelerate(5);
  }

  public void show() {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
