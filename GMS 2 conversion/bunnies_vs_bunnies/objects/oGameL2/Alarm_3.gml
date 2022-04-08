alarm[3] = 1 * room_speed;
if (global.countAdultBunnies >= 25 && (global.countGreens <= 12))
{
  instance_create(0,0,oFadeOut);
}
//else if (global.countGreens > 0 && (global.countAdultBunnies >= (global.countGreens*2)))
//  instance_create(0,0,oFadeOut);

