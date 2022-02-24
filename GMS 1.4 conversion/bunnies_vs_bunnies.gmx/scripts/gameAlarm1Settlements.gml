maxBunnyPop = global.countBunnyWells * 5;
maxGreenPop = global.countGreenWells * 5;
for (i=0; i<instance_count; i+=1)
{
  if (global.countBunnies == (maxBunnyPop - global.countThirstyBunnies) && global.countGreens == (maxGreenPop - global.countThirstyGreens))
    break;
  iii = instance_id[i];
  if (!instance_exists(iii))
    continue;
        
  switch(iii.object_index)
  {
    //Bunnies
    case oBunny:
      if (maxBunnyPop < (global.countBunnies - global.countThirstyBunnies))
      {
        with(iii) instance_change(oBunnyThirsty, false);
        global.countThirstyBunnies += 1; 
      }
      break;
    case oBunnyThirsty:
      if (maxBunnyPop > (global.countBunnies - global.countThirstyBunnies))
      {
        with(iii) instance_change(oBunny, false);
        global.countThirstyBunnies -= 1; 
      }
      break;
    case oBunnySettlement:
      if ((maxBunnyPop > (global.countBunnies - global.countThirstyBunnies)) && global.countThirstyBunnies < 1)
      {
        instance_create(iii.x+25, iii.y+25, oBunnySmall);
        global.countBunnies += 1;      
      }
      break;

    //Greens
    case oGreen:
      if (maxGreenPop < (global.countGreens - global.countThirstyGreens))
      {
        with(iii) instance_change(oGreenThirsty, false);
        global.countThirstyGreens += 1;         
      }
      break;
    case oGreenThirsty:
      if (maxGreenPop > (global.countGreens - global.countThirstyGreens))
      {
        with(iii) instance_change(oGreen, false);
        global.countThirstyGreens -= 1; 
      }
      break;
    case oGreenSettlement:
      if ((maxGreenPop > (global.countGreens - global.countThirstyGreens)) && global.countThirstyGreens < 1)
      {
        instance_create(iii.x+25, iii.y+25, oGreenSmall);
        global.countGreens += 1;        
      }      
      break;
    default:
      break;      
  }
}
