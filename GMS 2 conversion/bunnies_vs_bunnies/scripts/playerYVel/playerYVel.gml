function playerYVel() {
	if (climbingLadder || fallingLadder)
	  onGround = false;
	else 
	  onGround = place_meeting(x, y + 1, oSolid);
	if (onGround && !climbingLadder)
	{
	  yVel = 0;
	  if (jumpPressed)
	  {
	      yVel = JUMP_VEL;
	      onGround = false;
	  }
	}
	else if (climbingLadder)
	{
	  if (kUp)
	    yVel = -CLIMB_SPEED;
	  else if (kDown)
	  {
	    climbingLadder = false;
	    fallingLadder = true;  
	  } 
	  else
	    yVel = 0;
	}
	else if (yVel < VSPEED_MAX) 
	{
	    yVel = min(yVel + GRAV, VSPEED_MAX);
	}


}
