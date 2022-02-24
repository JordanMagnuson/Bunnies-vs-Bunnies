SPR = sBunnyRight;
IMG = 0;
XSCALE = facing;
YSCALE = 1;
depth = -50;

if (object_index == oBunnySmall)
{
    SPR = sBunnySmallRight;
    if (xVel == 0) walk_img = 0;
    else walk_img = walk_img + walk_spd * (abs(xVel) / HSPEED_MAX) mod 4;
    IMG = walk_img div 1;
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
else if (onGround) 
{
    SPR = sBunnyRight;
    if (xVel == 0) walk_img = 0;
    else walk_img = walk_img + walk_spd * (abs(xVel) / HSPEED_MAX) mod 4;
    IMG = walk_img div 1;
}
else
{
    if (yVel < 0) 
      IMG = 1;
    else if (yVel > 0) 
      IMG = 3;
}

draw_sprite_ext(SPR, IMG, x, y, XSCALE, YSCALE, 0, c_white, image_alpha);

//Thirsty
depth = -51;
if (object_index == oBunnyThirsty)
{
  image_speed = 0.1;
  draw_sprite_ext(sThirsty, image_index, x, y-16, 1, 1, 0, c_white, image_alpha);
}
