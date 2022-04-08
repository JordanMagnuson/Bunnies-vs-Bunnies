function greenAlarm0Building(argument0) {
	buildNextTo = argument0;

	if (global.countGreenTimber >= global.SETTLEMENT_COST && greenCanBuild())
	{
	  if (!place_meeting(x,y+20, oSolidGreen))
	  {
	    if (collision_rectangle(x-320,y,x+320,y+10,buildNextTo,false,false))
	    {
	      global.countGreenTimber -= global.SETTLEMENT_COST;   
	      instance_create(x,y-24, oGreenSettlement);
	      alarm[0] = 1/2 * room_speed;
	      alarm[1] = 1.5 * room_speed;      
	    }
	  }
	}



}
