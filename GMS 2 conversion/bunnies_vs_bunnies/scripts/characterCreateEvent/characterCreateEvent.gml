function characterCreateEvent() {
	//Constants (don't change)
	BABY_WANDER = 90;
	WANDER = 91;
	WHITE = 71;
	BROWN = 72;
	FRAG = 50;
	THIRST = 51;

	//Constants to change
	HSPEED_MAX = 4;
	if (object_index == oBunnySmall || object_index == oGreenSmall)
	  HSPEED_MAX = 2;
	VSPEED_MAX = 15;
	HACC = .5;
	HDEC = .5;
	SKID = .6;
	JUMP_VEL = -13;
	GRAV = .9;
	CLIMB_SPEED = 4;

	//Initialization 
	facing = 1;
	moving = false;
	xVel = 0;
	yVel = 0;
	hfrac = 0;
	vfrac = 0;
	swimming = false;
	climbingLadder = false;
	goUp = false;
	goDown = false;
	goRight = false;
	goLeft = false;
	state = BABY_WANDER;
	fallingLadder = false;
	collisionLadder = 0;
	newLadder = true;
	newDownLadder = true;
	newPlatformEdge = true;
	randomNumber = 0;

	onGround = place_meeting(x, y + 1, oSolid);

	leftbounds = 4;
	rightbounds = room_width;

	walk_img = 0;
	walk_spd = 1/2;

	alarm[3] = 150;


}
