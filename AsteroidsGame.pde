ArrayList <Asteroids> cool;
Star[] hola;
Spaceship hello;

public void setup() {
  size(800, 800);
  cool = new ArrayList <Asteroids>();
  hola = new Star[100];
  for (int i = 0; i < 5; i++) {
    cool.add(new Asteroids());
  }
  for (int i = 0; i < hola.length; i++) {
    hola[i] = new Star();
  }
  hello = new Spaceship();
}

public void draw() {
  background(0);

  for (int i = 0; i < hola.length; i++) {
    hola[i].show();
    hola[i].move();
  }
  for (int i = 0; i < cool.size(); i++) {
    cool.get(i).show();
    cool.get(i).move();
    float d = dist(
  (float)cool.get(i).getx(),
  (float)cool.get(i).gety(), 
  (float)hello.getx(),        
  (float)hello.gety()        
);

    if(d < 60){
    cool.remove(i);
    }
  }
  hello.show();
  hello.move();
  

  if (keyPressed) {
    if (key == 'd') {
      hello.turn(5);
    }
    if (key == 'a') {
      hello.turn(-5);
    }
    if (key == 'w') {
      hello.accelerate(0.06);
  }
  }
}

void keyReleased(){
  if (key == 'h')
  hello.hyperspace();
}
