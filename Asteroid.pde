class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (Math.random()*40)-20;
    corners = 6;
    xCorners = new int[]{(int)(Math.random()*4)-9,(int)(Math.random()*4)+8,(int)(Math.random()*4)+9,(int)(Math.random()*4)+8,(int)(Math.random()*4)-8,(int)(Math.random()*4)-11};
      yCorners = new int []{(int)(Math.random()*4)-7,(int)(Math.random()*4)-9,(int)(Math.random()*4)-3,(int)(Math.random()*4)+4,(int)(Math.random()*4)+8,(int)(Math.random()*4)-2};
    myColor = color(0);
    myCenterX = myCenterY = Math.random()*500;
    myXspeed = (int)(Math.random()*2)+1;
    myYspeed = (int)(Math.random()*2)+1;
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
