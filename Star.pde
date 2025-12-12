class Star //note that this class does NOT extend Floater
{
  protected int size;
  protected int x;
  protected int y;
  protected int xSpeed;
Star(){
  x = (int) (Math.random() * 800);
  y = (int) (Math.random() * 800);
  size = (int) (Math.random() * 4) + 4;
  xSpeed = 1;
}
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
public void show(){
  noStroke();
  fill((int) (Math.random() * 225), (int) (Math.random() * 225), (int) (Math.random() * 225));
  polygon(x, y, size -  3, size);
}
public void move(){
    if (x > width)
    x = 0;
    x += xSpeed;
  }
}
