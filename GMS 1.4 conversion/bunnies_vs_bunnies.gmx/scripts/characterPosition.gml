//White or Brown?
if argument0 = BROWN
{
  rightFence = oFenceBrownRight;
  leftFence = oFenceBrownLeft;
} 
else 
{
  rightFence = oFenceWhiteRight;
  leftFence = oFenceWhiteLeft;
} 

hfrac += xVel;
vfrac += yVel;
hint = hfrac div 1;
vint = vfrac div 1;
hfrac -= hint;
vfrac -= vint;
h = sign(hint);
v = sign(vint);
repeat (abs(hint))
{
    //Turn around if hit wall
    if (place_meeting(x + h, y, oSolid))
    {
        xVel = 0;
        facing = -facing;
        break;
    }
    //Turn around if hit edge of screen
    else if ((x + h == leftbounds) || (x + h == rightbounds))
    {
      xVel = 0;
      facing = -facing;
      break;
    }
    //Turn around if edge of platform
    else if (newPlatformEdge && collision_point(x,y+16,oSolid,false,false) && !collision_point(x+h,y+16,oSolid,false,false))
    {
      if (rand(100) <= 24)
      {
        xVel = 0;
        facing = -facing;
        break;
      }      
      newPlatformEdge = false;
    }
    else
      newPlatformEdge = true;
    //Turn around if going wrong way through fence
    if (place_meeting(x + h, y, rightFence) && facing == -1)
    {
      xVel = 0;
      facing = -facing;
      break;
    }
    else if (place_meeting(x + h, y, leftFence) && facing == 1)
    {
      xVel = 0;
      facing = -facing;
      break;
    }      
    else
      x = x + h;
}

repeat (abs(vint))
{
    if (place_meeting(x, y + v, oSolid) && !climbingLadder && !fallingLadder)
    {
        yVel = 0;
        if (v == 1)
        {
          onGround= true;
        }
        break;
    }
    else
    {
        y += v;
    }
}