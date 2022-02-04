
private int len = 400;
private int baseCase = len;
private boolean increaseBaseCase = false;
public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  background(0);
  sierpinski(len, 50, 450);
}
public void mouseDragged(){
  if(baseCase <= 0) {
    baseCase = 0;
    increaseBaseCase = true;
  }
  if(baseCase >= len)
    increaseBaseCase = false;
  if(increaseBaseCase)
    baseCase += 5;
  else
    baseCase -= 5;
}
public void sierpinski(int len, int x, int y) {
  if(len <= baseCase)
    triangle(x, y, x+len, y, x+len/2, y-len);
  else {
    sierpinski(len/2, x, y);
    sierpinski(len/2, x+len/2, y);
    sierpinski(len/2, x+len/4, y-len/2);
  }
}
