function greenCanBuild() {
	if (climbingLadder || fallingLadder || yVel != 0 || !place_meeting(x,y+20,oSolid)) //If not on ground
	  return false;
	if (collision_rectangle(x-40,y-10,x+40,y+10,oGreenSettlement,false,false))
	  return false;
	if (collision_rectangle(x-40,y-10,x+40,y+10,oTree,false,false))
	  return false;
	if (collision_rectangle(x-40,y-10,x+40,y+10,oTurret,false,false))
	  return false;  
	if (collision_rectangle(x-40,y-5,x+40,y+10,oWell,false,false))
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
	if (collision_rectangle(x-40,y-10,x+40,y+10,oSolidVert,false,false))
	  return false;        
	if (!place_meeting(x-45, y+19, oSolid) || !place_meeting(x+45, y+19, oSolid)) //Edge of platform
	  return false;            
	if (!place_meeting(x-65, y+19, oSolid) || !place_meeting(x+65, y+19, oSolid)) //Edge of platform
	  return false;                    
	if (!place_meeting(x-80, y+19, oSolid) && !place_meeting(x+80, y+19, oSolid)) //don't build on tiny platform
	  return false;
  
	return true;



}
