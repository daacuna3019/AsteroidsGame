class Star //note that this class does NOT extend Floater
{
  protected int size;
  protected int x;
  protected int y;
  protected int xSpeed;
Star(){
  x = (int) (Math.random() * 800);
  y = (int) (Math.random() * 800);
  size = 4;
  xSpeed = 1;
}
public void show(){
  noStroke();
  fill((int) (Math.random() * 225), (int) (Math.random() * 225), (int) (Math.random() * 225));
  ellipse(x, y, size, size);
}
public void move(){
    if (x > width)
    x = 0;
    x += xSpeed;
  }
}
