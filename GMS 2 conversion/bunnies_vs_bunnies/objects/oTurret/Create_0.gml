
  if (oPlayer1.facing == 1)
  {
    sprite_index=sTurretRight;
    direction = 0;
  }
else
{
  sprite_index=sTurretLeft;   
  direction = 180;
}
turretOn = 0;
action_set_alarm(5, 0);
