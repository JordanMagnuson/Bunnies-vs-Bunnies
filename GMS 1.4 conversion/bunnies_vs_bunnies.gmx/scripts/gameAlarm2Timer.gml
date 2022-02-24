global.minutesLeft = global.timer div 60;
global.secondsLeft = global.timer mod 60;
global.timer -= 1;

if (global.timer <= 0)
  restartLevelmessage()

//Timer end
/*
if (global.timer <= 0)
{
  if (global.victory)
  {
    fadeOut = instance_create(0,0,oFadeOut);
    fadeOut.roomGoto = 0; //0 means go to rmContinue
  }
  else
  {
    fadeOut = instance_create(0,0,oFadeOut);
    fadeOut.roomGoto = 15;
  }
}
*/
