if fade > 0
  fade-=1/(3*room_speed);//factor in front of room speed is how many seconds to take to fade
else
{
  instance_destroy();
}
