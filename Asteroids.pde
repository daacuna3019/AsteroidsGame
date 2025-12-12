class Asteroids extends Floater{
  private int rSpeed;
  Asteroids(){
  myCenterX = (int)(Math.random() * 800);
  myCenterY = (int)(Math.random() * 800);
  rSpeed = 0;
  corners = 6;
  xCorners = new int[6];
  yCorners = new int[6];
  xCorners[0] = -(int)(Math.random() * 60);
  yCorners[0] = -(int)(Math.random() * 60);
  xCorners[1] = (int)(Math.random() * 60);
  yCorners[1] = -(int)(Math.random() * 60);
  xCorners[2] = (int)(Math.random() * 60);
  yCorners[2] = 0;
  xCorners[3] = (int)(Math.random() * 60);
  yCorners[3] = (int)(Math.random() * 60);
  xCorners[4] = -(int)(Math.random() * 60);
  yCorners[4] = (int)(Math.random() * 60);
  xCorners[5] = -(int)(Math.random() * 60);
  yCorners[5] = 0;
  myColor = 255;
  myXspeed = (int)((Math.random() * 10) - 5);
  myYspeed = (int)((Math.random() * 10) - 5);
  myPointDirection = 0;
  }
  public void move(){
  rSpeed = (int)(Math.random() * 0) + 2;
  myPointDirection += rSpeed;
  super.move();
  }
  public double getx(){
    return myCenterX;
  }
  public double gety(){
    return myCenterX;
  }
  public void show(){
    noFill();
    super.show();
  }
}
