//Alarms
alarm[0] -= 1;
alarm[1] -= 1;
alarm[2] -= 1;

if (alarm[0] <= 0)
{
  gameAlarm0General();
  alarm[0] = 30;
}

if (alarm[1] <= 0)
{
  gameAlarm1Settlements();
  alarm[1] = 30;
}

if (alarm[2] <= 0)
{
  gameAlarm2Timer();
  alarm[2] = 30;
}

//End level
if (keyboard_check(vk_escape))
  room_goto(titleScreen);
  
//Instant Failure
/*
if (global.instantFailure == true)
{
  sleep(300);
  transition_kind = 21;
  room_goto(failure);
}
*/
