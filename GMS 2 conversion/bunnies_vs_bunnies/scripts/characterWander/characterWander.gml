function characterWander() {
	if (moving == false)
	{
	  //Maybe change direction
	  if (rand(10) == 0)
	    facing = -facing;
	  //Maybe start moving
	  if (rand(2) == 0)
	    moving = true;
	}

	//Conditions for climbing ladder
	collisionLadder = collision_point(x,y,oLadder,false,false)
	if (collisionLadder)
	{
	  canUpClimb = true;
	  if (climbingLadder)
	    x = collisionLadder.x+9;
	}
	else 
	{
	  canUpClimb = false;
	  newLadder = true;
	}
	if (collision_point(x,y+19,oLadder,false,false))
	  canDownClimb = true;
	else
	{
	  canDownClimb = false;
	  fallingLadder = false;
	  newDownLadder = true;
	}
	//Climb up  
	if (canUpClimb && !goDown)
	{
	  if (climbingLadder || (newLadder && rand(100)<=74))
	  {
	    goLeft = false;
	    goRight = false;
	    moving = false;
	    climbingLadder = true;
	    goDown = false;   
	    goUp = true;
	  }
	  newLadder = false;  
	}
	//Climb down
	else if (canDownClimb && !goUp)
	{
	  if (fallingLadder || (newDownLadder && rand(100)<=24))
	  {
	    fallingLadder = true;
	    climbingLadder = false; 
	    goLeft = false;
	    goRight = false
	    moving = false;
	    goUp = false;
	    goDown = true;    
	  }
	  newDownLadder = false;
	}
	if (!canUpClimb && !canDownClimb)
	{
	  climbingLadder = false;
	  goUp = false;
	  goDown = false;  
	}


}
