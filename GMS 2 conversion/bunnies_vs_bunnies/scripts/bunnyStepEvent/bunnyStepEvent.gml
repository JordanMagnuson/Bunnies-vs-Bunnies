function bunnyStepEvent() {
	//If bunny is outside of view, ignore everything, for speed improvements
	if (x > (__view_get( e__VW.XView, 0 ) - 20) && x < (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 20) && y > (__view_get( e__VW.YView, 0 ) - 20) && y < (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 20))
	{
	  //Mouse frag
	if (instance_exists(oCursor) && mouse_check_button(mb_any) && position_meeting(mouse_x,mouse_y,self))
	  {
	    bunnyDie(FRAG);
	  }
  
	  //Die of thirst
	  if (object_index = oBunnyThirsty)
	  {
	    alarm[3] -= 1;
	    if (alarm[3] <= 0 && rand(100) < 10)
	      bunnyDie(THIRST);
	  }
  
	  //Fade out if dead from thirst
	  if (fadeOut == true)
	  {
	    image_alpha-=1/(2*room_speed);
	    if image_alpha<=0
	      instance_destroy();
	  }  
    
	  //Determine state
	  if (object_index == oBunnySmall)
	    state = BABY_WANDER;
	  else if (object_index == oBunny)
	    state = WANDER;
    
	  //Determine behavior based on state
	  switch (state)
	  {
	    case BABY_WANDER:
	      bunnyBaby();
	      break;
	    case WANDER:
	      bunnyWander();
	      break;
	    default:
	      break;
	  }
  
	  //Velocity
	  characterXVel();
	  characterYVel();
  
	  //Position
	  bunnyPosition();
	}



}
