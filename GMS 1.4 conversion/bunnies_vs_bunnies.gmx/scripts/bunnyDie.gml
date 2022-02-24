if (argument0 == FRAG)
{
  if (object_index = oBunnySmall)
  {
    instance_create(x,y,oFragBunnySmall);
    instance_destroy();  
    particleBloodSmall();    
  }
  else
  {
    instance_create(x,y,oFragBunny);
    instance_destroy();  
    particleBlood();
  }
}
else  //Thirst
{
  fadeOut = true;
//  instance_destroy();
}
