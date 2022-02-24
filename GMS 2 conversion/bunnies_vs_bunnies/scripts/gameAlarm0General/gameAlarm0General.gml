function gameAlarm0General() {
	//Count everything
	global.countTrees = instance_number(oTree);
	global.countWells = instance_number(oWell);

	global.countBunnies = instance_number(oBunny); 
	global.countBunnySettlements = instance_number(oBunnySettlement);
	global.countBunnyWells = instance_number(oWellBunny);
	global.countBunnyTrees = instance_number(oTreeBunny);
	global.countAdultBunnies = instance_number(oBunny) - instance_number(oBunnySmall);  
	global.countThirstyBunnies = instance_number(oBunnyThirsty); 

	global.countGreenSettlements = instance_number(oGreenSettlement);
	global.countGreenWells = instance_number(oWellGreen);
	global.countGreenTrees = instance_number(oTreeGreen);
	global.countAdultGreens = instance_number(oGreen) - instance_number(oGreenSmall);   
	global.countGreens = instance_number(oGreen); 
	global.countThirstyGreens = instance_number(oGreenThirsty); 

	global.countBlood = instance_number(oBlood);
	global.countGuts = instance_number(oGut);

	//Give resources
	carrotProduction();




}
