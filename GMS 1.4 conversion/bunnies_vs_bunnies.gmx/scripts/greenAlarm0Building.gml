buildNextTo = argument0;

if (global.countGreenTimber >= global.SETTLEMENT_COST && greenCanBuild())
{
  if (!place_meeting(x,y+20, oSolidGreen))
  {
    if (collision_rectangle(x-320,y,x+320,y+10,buildNextTo,false,false))
    {
      global.countGreenTimber -= global.SETTLEMENT_COST;   
      instance_create(x,y-24, oGreenSettlement);
      alarm[0] = 15;
      alarm[1] = 45;      
    }
  }
}
