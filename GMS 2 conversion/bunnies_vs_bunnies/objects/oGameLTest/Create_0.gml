script_execute(gameCreateEvent,0,0,0,0,0);
global.timer = 480;
global.countBunnyTimber = 999999999;
global.countGreenTimber = 500;
ds_list_add(global.failureMessages,"The final solution has failed."); 
action_set_alarm(30, 3);
