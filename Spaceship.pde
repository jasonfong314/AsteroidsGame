class Spaceship extends Floater  
{  
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int []{-8,0,8,0};
      myColor = color(255);
      myCenterX = myCenterY = 250;
      myXspeed = 3;
      myYspeed = 3;
      myPointDirection = 0;
    }
    public void Hyperspace(){
      myPointDirection = (int)(Math.random()*361);
      myCenterX =(int)(Math.random()*501);
      myCenterY =(int)(Math.random()*501);
      myXspeed = myYspeed = 0;
    }
}
