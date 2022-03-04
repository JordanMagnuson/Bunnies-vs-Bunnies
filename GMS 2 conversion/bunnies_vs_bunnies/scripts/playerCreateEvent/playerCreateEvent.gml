function playerCreateEvent() {
	//Constants (don't change) - build cycle
	BUILD_OPTIONS = 4;
	SETTLEMENT = 1;
	BROWN_FENCE = 2;
	WHITE_FENCE = 3;
	TURRET = 4;

	//Constants to change
	HSPEED_MAX = 6 * 30/room_speed;
	VSPEED_MAX = 15 * 30/room_speed;
	HACC = 1 * sqr(30/room_speed);
	HDEC = .5 * sqr(30/room_speed);
	SKID = .6 * 30/room_speed;
	JUMP_VEL = -13 * 30/room_speed;
	GRAV = .9 * sqr(30/room_speed);
	CLIMB_SPEED = 4 * 30/room_speed;
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
	walk_spd = 1/2 * 30/room_speed;



}
