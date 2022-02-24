myHealth = myHealth - 1;
with(other)
{
  repeat(10)//tell how many particles of blood to make (i wouldnt go over 1000 or below 10)
  {
    instance_create(x,y,oAsh);
  }
}
with (other) {
action_kill_object();
}
