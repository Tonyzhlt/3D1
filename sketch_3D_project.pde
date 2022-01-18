PImage dirt;
PImage grasstop;
PImage grassside;
float rotx, roty;
void setup() {
  size(800, 800, P3D);
  dirt = loadImage("11.jpg");
  grasstop = loadImage("13.jpg");
  grassside = loadImage("12.jpg");
  textureMode(NORMAL);
}

void draw() {
  background(0);
  texturedCube(100, height/2, 0, dirt, 200);
  texturedCube(width/2, 100, 0, grasstop, grassside, dirt, 100);
}

void texturedCube(float x, float y, float z, PImage texture, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);
  texture(texture);
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);


  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  //left
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);


  //right
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);


  endShape();

  popMatrix();
}

void texturedCube(float x, float y, float z, PImage top, PImage side, PImage bottom, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);
  texture(top);
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  endShape();
  //bottom
  beginShape(QUADS);
  texture(bottom);
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();
  //front
  beginShape(QUADS);
  texture(side);
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);


  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  //left
  vertex(0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);


  //right
  vertex(1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);


  endShape();

  popMatrix();
}

//void texturedCube(float x, float y, float z, PImage texture, float size) {


//}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)* 0.01;
  roty = roty + (pmouseX - mouseX)* -0.01;
}
