script_execute(gameCreateEvent,0,0,0,0,0);
global.timer = 500;
global.countBunnyTimber = 500;
global.countGreenTimber = 500;
ds_list_clear(global.failureMessages);
ds_list_add(global.failureMessages,"\"The victor will never be asked if he told the truth.\""); 

action_set_alarm(30, 3);
