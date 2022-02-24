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
    //Stop if bump into solid
    if (place_meeting(x + h, y, oSolid))
    {
        xVel = 0;
        break;
    }
    //Stop if going wrong way through fence
    /*
    else if (place_meeting(x + h, y, oFenceWhiteRight) && facing == -1)
    {
      xVel = 0;
      break;
    }
    else if (place_meeting(x + h, y, oFenceWhiteLeft) && facing == 1)
    {
      xVel = 0;
      break;
    }     
    */
    
    //Else, go with velocity     
    else if (!climbingLadder)
        x = min(max(x + h, leftbounds), rightbounds);
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