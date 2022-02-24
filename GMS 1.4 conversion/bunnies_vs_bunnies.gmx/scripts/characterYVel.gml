if (climbingLadder || fallingLadder)
  onGround = false;
else 
  onGround = place_meeting(x, y + 1, oSolid);
if (onGround && !climbingLadder && !fallingLadder)
{
  yVel = 0;
}
else if (climbingLadder)
{
  if (goUp)
    yVel = -CLIMB_SPEED;
  else if (goDown)
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