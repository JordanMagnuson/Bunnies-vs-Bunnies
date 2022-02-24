function greenDie(argument0) {
	if (argument0 == FRAG)
	{
	  if (object_index = oGreenSmall)
	  {
	    instance_create(x,y,oFragGreenSmall);
	    instance_destroy();  
	    particleBloodSmall();    
	  }
	  else
	  {
	    instance_create(x,y,oFragGreen);
	    instance_destroy();  
	    particleBlood();
	  }
	}
	else  //Thirst
	{
	  fadeOut = true;
	}

	if (false)
	{
	  image_xscale = 0.5;
	  image_yscale = 0.5;
	}



}
