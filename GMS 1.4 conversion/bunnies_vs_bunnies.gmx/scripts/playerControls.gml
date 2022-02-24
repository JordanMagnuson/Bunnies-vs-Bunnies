kRight = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
kLeft = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
kUp = keyboard_check_direct(vk_up) || keyboard_check_direct(ord("W"));
kDown = keyboard_check_direct(vk_down) || keyboard_check_direct(ord("S"));
kJump = keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space);
kSpace = keyboard_check_direct(vk_space);
kBuild = keyboard_check_pressed(ord("X"));
kCycle = keyboard_check_pressed(ord("C"));  

//Check if player can press jump
jumpPressed = false;
if (!kJump) 
  canPressJump = true;
if (kJump && canPressJump && !climbingLadder && !fallingLadder) 
{
  jumpPressed = true; 
  canPressJump = false;
}

//Conditions for climbing ladder
collisionLadder = collision_point(x,y,oLadder,false,false)
if (collisionLadder)
{
  canUpClimb = true;
  if (climbingLadder)
    x = collisionLadder.x+8;  
}
else 
  canUpClimb = false;
if (collision_point(x,y+19,oLadder,false,false))
  canDownClimb = true;
else
{
  canDownClimb = false;
  fallingLadder = false;
}
  
if (kUp && canUpClimb)
{
  climbingLadder = true;
}
else if (kDown && canDownClimb && fallingSpot == 0)
{
  fallingLadder = true;
  climbingLadder = false;  
  fallingSpot = y;
}
else if (kSpace && canUpClimb)
{
  fallingLadder = true;
  climbingLadder = false;  
}
if (fallingLadder && (y-fallingSpot >= 30))
{
  fallingLadder = false;
}
if (!canUpClimb && !canDownClimb)
{
  climbingLadder = false;
  fallingSpot = 0;  
}
  
//Cycle build  
if (kCycle)
{
  buildIndex = buildIndex + 1;
  if buildIndex > BUILD_OPTIONS
    buildIndex = 1;
}
  
if (kBuild && playerCanBuild())
{
  switch (buildIndex)
  {
    case SETTLEMENT:
      if (global.countBunnyTimber >= global.SETTLEMENT_COST)
      {
        global.countBunnyTimber -= global.SETTLEMENT_COST;
        instance_create(x, y-24, oBunnySettlement);
      }
      break;
    case TURRET:
      if (global.countBunnyTimber >= global.TURRET_COST)
      {
        global.countBunnyTimber -= global.TURRET_COST;      
        instance_create(x+(10*facing), y-24, oTurret);
      }     
      break;
    case WHITE_FENCE:
      if (global.countBunnyTimber >= global.FENCE_COST)
      {
        global.countBunnyTimber -= global.FENCE_COST; 
        if (facing == 1)     
          instance_create(x, y-24, oFenceWhiteRight);
        else 
          instance_create(x, y-24, oFenceWhiteLeft);
      }  
      break;
    case BROWN_FENCE:
      if (global.countBunnyTimber >= global.FENCE_COST)
      {
        global.countBunnyTimber -= global.FENCE_COST;      
        if (facing == 1)     
          instance_create(x, y-24, oFenceBrownRight);
        else 
          instance_create(x, y-24, oFenceBrownLeft);
      }       
      break;             
    default:
      break;
  }
}
