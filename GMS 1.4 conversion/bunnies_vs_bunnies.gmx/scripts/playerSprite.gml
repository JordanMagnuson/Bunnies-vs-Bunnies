SPR = sBunnyRight;
IMG = 0;
XSCALE = facing;
YSCALE = 1;

if (onGround)
{
    SPR = sBunnyRight;
    if (xVel == 0) 
    {
      walk_img = 0;
      IMG = 0;
    }
    else 
    {
      walk_img = walk_img + walk_spd * (abs(xVel) / HSPEED_MAX) mod 4;
      IMG = (walk_img + 1) div 1;
    }
}
else if (climbingLadder)
{
  SPR = sBunnyClimbing;
  if (yVel > 0) 
    YSCALE = -1;
  else if (yVel < 0)
    YSCALE = 1;
  
  if (yVel == 0) 
    walk_img = 0;
  else 
    walk_img = walk_img + walk_spd * (abs(yVel) / HSPEED_MAX) mod 4;
  IMG = walk_img div 1; 
}    
else
{
  SPR = sBunnyRight;
  if (yVel < 0) IMG = 1;
  else if (yVel > 0) IMG = 3;
}    


draw_sprite_ext(SPR, IMG, x, y, XSCALE, YSCALE, 0, c_white, 1);
