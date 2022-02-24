if (oPlayer1.kBuild) 
{
  if (place_meeting(x,y,oPlayer1))
  {
    if (turretOn == 0)
      turretOn = 1;
    else
      turretOn = 0;
  }
}
