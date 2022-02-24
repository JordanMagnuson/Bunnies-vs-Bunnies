fadeOut = false;
NUM_OF_BLOCKS_TO_CHANGE = 16;

inEachDirection = NUM_OF_BLOCKS_TO_CHANGE/2;
blockWidth = sprite_get_width(sSolid)/2;

xPos = x;
yPos = y + 44;

// Claim territory around settlement
if (object_index == oBunnySettlement)
{
  for (i=0; i<=inEachDirection+1; i+=1) 
  {
    if (place_meeting(xPos, yPos-10, oSolidVert))   //Tree stops
    {
      break;
      }
    else if (place_meeting(xPos, yPos, oSolid))
    { 
      with(instance_position(xPos,yPos,oSolid)) instance_change(oSolidBunny,true)
      xPos = xPos + blockWidth;  
      //position_change(xPos,yPos,changeTo,true)  //Can't use this, as it will destroy ladders
    }
    else  //No ground
      break;
  } 
  xPos = x;
  for (i=0; i<=inEachDirection; i+=1) 
  {
    if (place_meeting(xPos, yPos-10, oSolidVert))  //Tree stops
      break;
    else if (place_meeting(xPos, yPos, oSolid))
    { 
      with(instance_position(xPos,yPos,oSolid)) instance_change(oSolidBunny,true)
      xPos = xPos - blockWidth;  
      //position_change(xPos,yPos,changeTo,true)  //Can't use this, as it will destroy ladders
    }
    else  //No ground
      break;
  }   
}


else if (object_index == oGreenSettlement)
{
  for (i=0; i<=inEachDirection+1; i+=1) 
  {
    if (place_meeting(xPos, yPos, oSolidVert))  //Tree stops
      break;
    else if (place_meeting(xPos, yPos, oSolid))
    { 
      with(instance_position(xPos,yPos,oSolid)) instance_change(oSolidGreen,true)
      //position_change(xPos,yPos,changeTo,true)
      xPos = xPos + blockWidth;        
    }
    else  //No ground
      break;
  } 
  xPos = x;
  for (i=0; i<=inEachDirection; i+=1) 
  {
    if (place_meeting(xPos, yPos, oSolidVert))  //Tree stops
      break;
    else if (place_meeting(xPos, yPos, oSolid))
    { 
      with(instance_position(xPos,yPos,oSolid)) instance_change(oSolidGreen,true)
      //position_change(xPos,yPos,changeTo,true)
      xPos = xPos - blockWidth;        
    }
    else  //No ground
      break;
  }   
}
