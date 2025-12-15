class Asteroids extends Floater{
  private int rSpeed;
  Asteroids(){
  myCenterX = (int)(Math.random() * 800);
  myCenterY = (int)(Math.random() * 800);
    rSpeed = (int)(Math.random() * 3) + 2;;
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
  myColor = (int)(Math.random()*100);
  myXspeed = (int)((Math.random() * 10) - 5);
  myYspeed = (int)((Math.random() * 10) - 5);
  myPointDirection = 0;
  }
  public void move(){
  myPointDirection += rSpeed;
  super.move();
  }
  public double getx(){
    return myCenterX;
  }
  public double gety(){
    return myCenterY;
  }
  public void show(){
    fill(myColor);
    stroke(255);    
    strokeWeight(2);
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
