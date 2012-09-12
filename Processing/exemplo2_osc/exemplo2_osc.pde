import oscP5.*;

OscP5 myOsc;

float pd1 = 0;
float pd2 = 0;

void setup() {
  size(800, 600);
  smooth();
  noStroke();

  myOsc = new OscP5(this, 9999);
}

void oscEvent(OscMessage msg) {

  String addr = msg.addrPattern();
  float val = msg.get(0).floatValue();

  if (addr.equals("/pd/1")) {

    pd1 = val;
    println("pd1: "+val);
  }
  else if (addr.equals("/pd/2")) {

    pd2 = val;
    println("pd2: "+val);
  }
}

void draw() {

  background(0);

  fill(100);
  rect(0, 0, pd1, 300);
  fill(200);
  rect(0, 300, pd2, 300);
}

