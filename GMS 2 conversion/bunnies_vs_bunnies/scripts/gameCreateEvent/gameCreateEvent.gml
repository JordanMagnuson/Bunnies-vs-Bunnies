function gameCreateEvent() {
	// Random seed.
	randomize();
	
	//Fade room in
	instance_create(0,0,oFadeIn);

	//Global constants
	global.SETTLEMENT_COST = 100;
	global.TURRET_COST = 150;
	global.FENCE_COST = 50;

	//Global variables
	global.treeCount = 0;
	global.wellCount = 0;

	global.countBunnies = 0;
	global.countAdultBunnies = 0;
	global.countThirstyBunnies = 0;
	global.countBunnyWells = 0;
	global.countBunnyTrees = 0;
	global.countBunnyTimber = 100;

	global.countGreens = 0;
	global.countAdultGreens = 0;
	global.countThirstyGreens = 0;
	global.countGreenWells = 1;
	global.countGreenTrees = 0;
	global.countGreenTimber = 0;

	global.timer = 999999; //timer in seconds
	global.minutesLeft = 0;
	global.secondsLeft = 0;
	global.lastRoom = room;
	global.victory = false;
	global.instantFailure = false;
	global.countBlood = 0;
	global.countGuts = 0;


	//Cursor
	// cursor_sprite doesn't scale properly. Use oCursor object instead.
	//cursor_sprite = sCrosshair;

	//Initialize Font Sprite (Casual Encounter from Auntiepixelante.com). Number indicates size.
	global.font5=font_add_sprite(sFontCasualEncounter5,ord("!"),1,2);
	draw_set_font(global.font5);

	//Alarms
	alarm[0] = 30;  //General
	alarm[1] = 30;  //Settlements
	alarm[2] = 30;  //Timer

	//Save progress
	if (room > titleScreen) 
	{
	  saveGame();
	}



}
