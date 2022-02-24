//Mouse frag
if (mouse_button && position_meeting(mouse_x,mouse_y,self))
  greenDie(FRAG);

//Die of thirst
if (object_index = oGreenThirsty)
{
  alarm[3] -= 1;
  if (alarm[3] <= 0 && rand(100) < 10)
    greenDie(THIRST);
}  

//Fade out if dead from thirst
if (fadeOut == true)
{
  image_alpha-=1/(2*room_speed);
  if image_alpha<=0
    instance_destroy();
}  
  
//Determine state
if (object_index == oGreenSmall)
  state = BABY_WANDER;
else if (object_index == oGreen)
  state = WANDER;
  
//Determine behavior based on state
switch (state)
{
  case BABY_WANDER:
    greenBaby();
    break;
  case WANDER:
    greenWander();
    break;
  default:
    break;
}

//Velocity
characterXVel();
characterYVel();

//Position
greenPosition();
