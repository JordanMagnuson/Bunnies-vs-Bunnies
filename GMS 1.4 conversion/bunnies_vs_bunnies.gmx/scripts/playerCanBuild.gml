switch (buildIndex) {
  case SETTLEMENT:
    leftMargin = 40;
    rightMargin = 40;
    break;
  case TURRET:
    leftMargin = 35;
    rightMargin = 35;  
    break;
  case WHITE_FENCE:
  case BROWN_FENCE: 
    leftMargin = 15;
    rightMargin = 15;     
    break;
}

if (climbingLadder || fallingLadder || yVel != 0 || !place_meeting(x,y+20,oSolid)) //If not on ground
  return false;
if (collision_rectangle(x-leftMargin,y-10,x+rightMargin,y+10,oBunnySettlement,false,false))
  return false;
if (collision_rectangle(x-leftMargin,y-10,x+rightMargin,y+10,oTree,false,false))
  return false;
if (collision_rectangle(x-leftMargin,y-10,x+rightMargin,y+10,oTurret,false,false))
  return false;  
if (collision_rectangle(x-leftMargin,y-5,x+rightMargin,y+10,oWell,false,false))
  return false;  
/*
if (collision_rectangle(x-10,y-5,x+10,y+10,oFenceWhiteRight,false,false))
  return false;     
if (collision_rectangle(x-10,y-5,x+10,y+10,oFenceWhiteLeft,false,false))
  return false;     
if (collision_rectangle(x-10,y-5,x+10,y+10,oFenceBrownLeft,false,false))
  return false;     
if (collision_rectangle(x-10,y-5,x+10,y+10,oFenceBrownRight,false,false))
  return false;   
*/          
if (collision_rectangle(x-35,y-10,x+35,y+10,oSolidVert,false,false))
  return false;    
if (!place_meeting(x-55, y+19, oSolid) || !place_meeting(x+50, y+19, oSolid)) //Edge of platform
  return false;               

return true;