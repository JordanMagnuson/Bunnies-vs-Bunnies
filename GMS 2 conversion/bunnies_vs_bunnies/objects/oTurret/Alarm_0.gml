if (turretOn)
{
  image_speed = 0.5;  
  if (direction == 0)
  {
    bullet = instance_create(x+20, y+27, oTurretBullet);
    bullet.direction = 0;
  }
  else
  {
    bullet = instance_create(x-20, y+27, oTurretBullet);
    bullet.direction = 180;
  }  
  bullet.speed = 9;  
}
else
{
  image_speed = 0;
  image_index = 0;
}
    

action_set_alarm(5, 0);
