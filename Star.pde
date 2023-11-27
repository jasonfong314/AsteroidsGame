class Star //note that this class does NOT extend Floater
{
  private double myX;
  private double myY;
  private double mySize;
  //private double myOpacity;
  public Star(){
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
    mySize = (int)(Math.random()*4);
    //myOpacity = (int)(Math.random()*10);
  }
  public void show(){
    noStroke();
    fill(255);
    //fill(255,255,255,(float)myOpacity);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
