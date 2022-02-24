if (myHealth <= 0)
{
  tile_layer_delete_at(2000,x,y)
  instance_destroy();
}
action_set_alarm(30, 0);
