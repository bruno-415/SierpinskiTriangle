
private int len = 400;
private int baseCase = len;
private boolean increaseBaseCase = false;
public void setup(){
  size(500,500);
  background(0);
  System.out.println(baseCase);
}
public void draw(){
  background(0);
  sierpinski(len, 50, 450);
}
public void mouseClicked(){
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if(baseCase <= 3) {
    baseCase = 3;
    increaseBaseCase = true;
  }
  else if(baseCase >= len) {
    increaseBaseCase = false;
    baseCase = 400;
  }
  if(increaseBaseCase)
    baseCase *= 2;
  else
    baseCase /= 2;
  System.out.println(baseCase);
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
