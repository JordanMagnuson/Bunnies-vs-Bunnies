function carrotProduction() {
	globalvar countBunnyTrees, countBunnyTimber, countGreenTrees, countGreenTimber;

	//Bunnies
	if (countBunnyTrees < 1)
	  countBunnyTimber += 3;
	else
	{
	  for (i=0; i<countBunnyTrees; i+=1) 
	  {
	    if (i>4)
	      break;
	    countBunnyTimber  = countBunnyTimber + (5-i);
	  } 
	}  

	//Greens

	if (countGreenTrees < 1)
	  countGreenTimber += 3;
	else
	{
	  for (i=0; i<countGreenTrees ; i+=1) 
	  {
	    if (i>4)
	      break;
	    countGreenTimber = countGreenTimber + (5-i);
	  } 
	}




}
