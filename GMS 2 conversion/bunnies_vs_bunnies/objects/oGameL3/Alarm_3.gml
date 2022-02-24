alarm[3] = 30;
if (global.countAdultBunnies >= 30 && (global.countGreens <= 0))
{
  instance_create(0,0,oFadeOut);
}
if (global.countAdultBunnies >= 30 && global.countGreens < 10)
  instance_create(0,0,oFadeOut);
  

