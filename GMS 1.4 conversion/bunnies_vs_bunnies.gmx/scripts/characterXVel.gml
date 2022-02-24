if (moving == true)
{
  if (facing == 1)
  {
    goRight = true;
    goLeft = false;
  }
  else 
  {
    goLeft = true;
    goRight = false;
  }
}
else 
{
  goLeft = false;
  goRight = false;
}
  
if (goRight)
{
    if (xVel >= 0)
    {
        if (xVel < HSPEED_MAX)
          xVel = min(xVel + HACC, HSPEED_MAX);
        facing = 1;
    }
    else xVel += SKID;
}
else if (!goLeft && xVel < 0)
{
    xVel = min(xVel + HDEC, 0);
}

if (goLeft)
{
    if (xVel <= 0)
    {
        if (xVel > -HSPEED_MAX) 
          xVel = max(xVel - HACC, -HSPEED_MAX);
        facing = -1;
    }
    else xVel -= SKID;
}
else if (!goRight && xVel > 0)
{
    xVel = max(xVel - HDEC, 0);
}