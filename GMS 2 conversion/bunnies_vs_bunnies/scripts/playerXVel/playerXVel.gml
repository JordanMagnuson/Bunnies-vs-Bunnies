function playerXVel() {
	if (kRight)
	{
	    if (xVel >= 0)
	    {
	        if (xVel < HSPEED_MAX)
	          xVel = min(xVel + HACC, HSPEED_MAX);
	        facing = 1;
	    }
	    else xVel += SKID;
	}
	else if (!kLeft && xVel < 0)
	{
	    xVel = min(xVel + HDEC, 0);
	}

	if (kLeft && !climbingLadder)
	{
	    if (xVel <= 0)
	    {
	        if (xVel > -HSPEED_MAX) 
	          xVel = max(xVel - HACC, -HSPEED_MAX);
	        facing = -1;
	    }
	    else xVel -= SKID;
	}
	else if (!kRight && xVel > 0 && !climbingLadder)
	{
	    xVel = max(xVel - HDEC, 0);
	}




}
