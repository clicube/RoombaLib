Roomba rmb;

void setup()
{
  size(300,300);
  background(240);
  rmb = new Roomba(100);
  rmb.x = 150;
  rmb.y = 150;
  rmb.draw();
  //noLoop();
}

void draw()
{
  background(240);
  rmb.rad = rmb.rad + 0.1;
  rmb.draw();
}
