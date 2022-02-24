if (moving == false)
{
  //Maybe change direction
  if (rand(10) == 0)
    facing = -facing;
  //Maybe start moving
  if (rand(2) == 0)
    moving = true;
}
else
{
  nearestSettlement = instance_nearest(x,y,oGreenSettlement);
  if (nearestSettlement)
  {
    if (distance_to_point(nearestSettlement.x, nearestSettlement.y) > 40)
    {
      if (nearestSettlement.x < x)
        facing = -1;
      else 
        facing = 1;
    }
  }
}