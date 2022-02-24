function playerCreateEvent() {
	//Constants (don't change) - build cycle
	BUILD_OPTIONS = 4;
	SETTLEMENT = 1;
	BROWN_FENCE = 2;
	WHITE_FENCE = 3;
	TURRET = 4;

	//Constants to change
	HSPEED_MAX = 6;
	VSPEED_MAX = 15;
	HACC = 1;
	HDEC = .5;
	SKID = .6;
	JUMP_VEL = -13;
	GRAV = .9;
	CLIMB_SPEED = 4;
	HEALTH_MAX = 100;

	//Initialization 
	facing = 1;
	xVel = 0;
	yVel = 0;
	hfrac = 0;
	vfrac =0;
	swimming = false;
	climbingLadder = false;
	canUpClimb = false;
	canDownClimb = false;
	buildIndex = SETTLEMENT;
	fallingLadder = false;
	playerOriginX = x;
	playerOriginY = y;
	health = HEALTH_MAX;
	fallingSpot = 0;
	collisionLadder=0;
	leftMargin = 0;
	rightMargin = 0;

	onGround = place_meeting(x, y + 1, oSolid);

	leftbounds = 4;
	rightbounds = room_width;

	walk_img = 0;
	walk_spd = 1/2;



}
