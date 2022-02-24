//Delete overlapping solids
if (object_index != oSolidVert)
  if (place_meeting(x,y,oSolid))
    if (!place_meeting(x,y,oSolidVert))
      instance_destroy();

if (object_index == oSolidBunny)
{
  //Change wells
  if (collision_rectangle(x,y-1,x+80,y+10,oWell,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oWell,false,false)) instance_change(oWellBunny,true)
  
  //Change trees
  if (collision_rectangle(x,y-1,x+80,y+10,oTree,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oTree,false,false)) instance_change(oTreeBunny,true)
}
else if (object_index == oSolidGreen)
{
  //Change wells
  if (collision_rectangle(x,y-1,x+80,y+10,oWell,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oWell,false,false)) instance_change(oWellGreen,true)
  
  //Change trees
  if (collision_rectangle(x,y-1,x+80,y+10,oTree,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oTree,false,false)) instance_change(oTreeGreen,true)
}
//Change unclaimed resources back to neutral (eg if a burrow is destroyed)
else if (object_index == oSolid)
{
  //Change wells
  if (collision_rectangle(x,y-1,x+80,y+10,oWellBunny,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oWellBunny,false,false)) instance_change(oWell,true)
  if (collision_rectangle(x,y-1,x+80,y+10,oWellGreen,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oWellGreen,false,false)) instance_change(oWell,true)     
  
  //Change trees
  if (collision_rectangle(x,y-1,x+80,y+10,oTreeBunny,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oTreeBunny,false,false)) instance_change(oTree,true)
  if (collision_rectangle(x,y-1,x+80,y+10,oTreeGreen,false,false))
     with(collision_rectangle(x,y-1,x+80,y+10,oTreeGreen,false,false)) instance_change(oTree,true)     
}
