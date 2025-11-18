class Spaceship extends Floater  
{   
    Spaceship(){
      myCenterX = 400;
      myCenterY = 400;;
      corners = 4; //the number of corners, a triangular floater has 3   
      xCorners = new int[4];
      yCorners = new int[4];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255);
    }
}
