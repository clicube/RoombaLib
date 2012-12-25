Roomba rmb;
int state = 0;

void setup()
{
  size(640, 480);
  background(240);
  rmb = new Roomba(100);
  rmb.x = 320;
  rmb.y = 240;
  //rmb.rad = 2*PI*30/360;
  rmb.draw();
}

void draw()
{
  // random walk ?
  if (rmb.moveCompleted())
  {
    if (state == 0)
    {
      state = 1;
      rmb.moveRotate(random(-PI, PI));
    }
    else if (state == 1)
    {
      state = 0;
      rmb.moveStraight(random(-30,100));
    }
  }

  background(240);
  rmb.step();
  rmb.draw();
}

