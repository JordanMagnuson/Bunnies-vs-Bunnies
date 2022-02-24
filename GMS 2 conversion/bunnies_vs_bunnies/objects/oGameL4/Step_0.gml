/*
if (instance_exists(oFragBunny) || instance_exists(oFragBunnySmall))
{
  ds_list_clear(global.failureMessages);
  ds_list_add(global.failureMessages,"You have killed your own kind."); 
  fadeOut = instance_create(0,0,oFadeOut);
  fadeOut.roomGoto = 15;
}
*/

/* */
script_execute(gameStepEvent,0,0,0,0,0);
/*  */
