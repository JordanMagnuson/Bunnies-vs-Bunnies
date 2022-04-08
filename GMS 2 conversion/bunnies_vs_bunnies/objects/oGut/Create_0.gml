motion_set(random(360),random(3));//sets to move in any were in a 180 degree movement and speed to random out of 10 (make the speed slower for guts there heavy)
gravity_direction=270;//sets the direction gravity pulls
gravity=0.5;//sets ammount of gravity (i dont recomend over 0.5)
alarm[0]=6.7*room_speed/((global.countGuts + 100)/100);//sets the timer for when to start to remove blood
alarm[1]=1/2 * room_speed;
fade=false;//tells not to fade yet
