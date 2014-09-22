face[] dot = {
  f(17, 17), f(17, 42), f(17, 67), f(67, 17), f(67, 42), f(67, 67), f(42, 42)
};

int cube = 0;

void setup()
{
  size (84, 84);
  background(255);
  smooth();
  frameRate(1);
}

void draw()
{
  cube++;
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  background(255);
  switch(cube)
  {
  case 1:
    ellipse(dot[6].x, dot[6].y, 10, 10);
    break;
  case 2:
    ellipse(dot[0].x, dot[0].y, 10, 10);
    ellipse(dot[5].x, dot[5].y, 10, 10);
    break;
  case 3:
    ellipse(dot[0].x, dot[0].y, 10, 10);
    ellipse(dot[6].x, dot[6].y, 10, 10);
    ellipse(dot[5].x, dot[5].y, 10, 10);
    break;
  case 4:
    ellipse(dot[0].x, dot[0].y, 10, 10);
    ellipse(dot[2].x, dot[2].y, 10, 10);
    ellipse(dot[3].x, dot[3].y, 10, 10);
    ellipse(dot[5].x, dot[5].y, 10, 10);
    break;
  case 5:
    ellipse(dot[0].x, dot[0].y, 10, 10);
    ellipse(dot[2].x, dot[2].y, 10, 10);
    ellipse(dot[3].x, dot[3].y, 10, 10);
    ellipse(dot[5].x, dot[5].y, 10, 10);
    ellipse(dot[6].x, dot[6].y, 10, 10);
    break;
  case 6:
    ellipse(dot[0].x, dot[0].y, 10, 10);
    ellipse(dot[1].x, dot[1].y, 10, 10);
    ellipse(dot[2].x, dot[2].y, 10, 10);
    ellipse(dot[3].x, dot[3].y, 10, 10);
    ellipse(dot[4].x, dot[4].y, 10, 10);
    ellipse(dot[5].x, dot[5].y, 10, 10);
    break;
  }
  cube %= 6;
}

face f(int x, int y)
{
  return new face(x, y);
}

class face
{
  int x,y;
  
  face(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
}
