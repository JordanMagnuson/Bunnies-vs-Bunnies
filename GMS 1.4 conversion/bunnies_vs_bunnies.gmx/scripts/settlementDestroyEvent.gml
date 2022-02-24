NUM_OF_BLOCKS_TO_CHANGE = 16;

inEachDirection = NUM_OF_BLOCKS_TO_CHANGE/2;
blockWidth = sprite_get_width(sSolid)/2 + 1;

xPos = x;
yPos = y + 44;

// Release claimed territory around settlement
if (object_index == oBunnySettlement)
{
  for (i=0; i<=inEachDirection; i+=1) 
  {
    if (place_meeting(xPos, yPos-10, oSolidVert))  //Tree stops
      break;
    else if (place_meeting(xPos, yPos, oSolidBunny))
    { 
      with(instance_position(xPos,yPos,oSolidBunny)) instance_change(oSolid,true)
      xPos = xPos + blockWidth;  
      //position_change(xPos,yPos,changeTo,true)  //Can't use this, as it will destroy ladders
    }
    else if (place_meeting(xPos, yPos, oSolidGreen))
    {
      xPos = xPos + blockWidth;  
    }        
    else  //No ground
      break;
  } 
  xPos = x;
  for (i=0; i<=inEachDirection; i+=1) 
  {
    if (place_meeting(xPos, yPos-10, oSolidVert))  //Tree stops
      break;
    else if (place_meeting(xPos, yPos, oSolidBunny))
    { 
      with(instance_position(xPos,yPos,oSolidBunny)) instance_change(oSolid,true)
      xPos = xPos - blockWidth;  
      //position_change(xPos,yPos,changeTo,true)  //Can't use this, as it will destroy ladders
    }
    else if (place_meeting(xPos, yPos, oSolidGreen))
    {
      xPos = xPos - blockWidth;  
    }        
    else  //No ground
      break;
  }   
}


else if (object_index == oGreenSettlement)
{
  for (i=0; i<=inEachDirection; i+=1) 
  {
    if (place_meeting(xPos, yPos, oSolidVert))  //Tree stops
    {
      break;
      }
    else if (place_meeting(xPos, yPos, oSolidGreen))
    { 
      with(instance_position(xPos,yPos,oSolidGreen)) instance_change(oSolid,true)
      //position_change(xPos,yPos,changeTo,true)
      xPos = xPos + blockWidth;        
    }
    else if (place_meeting(xPos, yPos, oSolidBunny))
    {
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
    else if (place_meeting(xPos, yPos, oSolidGreen))
    { 
      with(instance_position(xPos,yPos,oSolidGreen)) instance_change(oSolid,true)
      //position_change(xPos,yPos,changeTo,true)
      xPos = xPos - blockWidth;        
    }
    else if (place_meeting(xPos, yPos, oSolidBunny))
    {
      xPos = xPos - blockWidth;  
    }        
    else  //No ground
      break;
  }   
}
