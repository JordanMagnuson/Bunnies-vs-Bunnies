function characterCreateEvent() {
	//Constants (don't change)
	BABY_WANDER = 90;
	WANDER = 91;
	WHITE = 71;
	BROWN = 72;
	FRAG = 50;
	THIRST = 51;

	//Constants to change
	HSPEED_MAX = 4 * 30/room_speed;
	if (object_index == oBunnySmall || object_index == oGreenSmall)
	  HSPEED_MAX = 2 * 30/room_speed;
	VSPEED_MAX = 15 * 30/room_speed;
	HACC = .5 * sqr(30/room_speed);
	HDEC = .5 * sqr(30/room_speed);
	SKID = .6 * 30/room_speed;
	JUMP_VEL = -13 * 30/room_speed;
	GRAV = .9 * sqr(30/room_speed);
	CLIMB_SPEED = 4 * 30/room_speed;

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
	walk_spd = 1/2 * 30/room_speed;

	alarm[3] = 5 * room_speed;


}
