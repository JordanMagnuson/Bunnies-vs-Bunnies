function characterUnstick() {
	for (i=0; i<10; i+=1)
	{
	  if (place_meeting(x, y, oSolid) && !climbingLadder && !fallingLadder)
	  {
	    y = y - 1;
	  }
	  else
	    break;
	}


}
