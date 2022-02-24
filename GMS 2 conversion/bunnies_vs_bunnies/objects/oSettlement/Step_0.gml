if (fadeOut)
{
image_alpha-=1/(3*room_speed)
if image_alpha<=0
  instance_destroy()
}
