script_execute(characterYVel,0,0,0,0,0);
script_execute(characterXVel,0,0,0,0,0);
script_execute(characterPosition,0,0,0,0,0);
if (onGround && image_speed == 0)
  instance_change(oFragBunnyFinished, false);
if (image_index >= 2)
{
 // show_message("boo");
  image_speed = 0;
}
