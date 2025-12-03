Star[] hola;
Spaceship hello;

public void setup() {
  size(800, 800);
  hola = new Star[100];
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
      hello.accelerate(0.2);
  }
  }
}

void keyReleased(){
  if (key == 'h')
  hello.hyperspace();
}
