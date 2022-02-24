function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -999; // oGame
	global.__objectDepths[1] = 0; // oCheat
	global.__objectDepths[2] = -999; // oGameTitleScreen
	global.__objectDepths[3] = -999; // oGameL1
	global.__objectDepths[4] = -999; // oGameL2
	global.__objectDepths[5] = -999; // oGameL3
	global.__objectDepths[6] = -999; // oGameL4
	global.__objectDepths[7] = -999; // oGameL5
	global.__objectDepths[8] = -999; // oGameLTest
	global.__objectDepths[9] = 0; // oCredits
	global.__objectDepths[10] = 0; // oMusic
	global.__objectDepths[11] = 0; // oFailureMessageInit
	global.__objectDepths[12] = -100; // oPlayer1
	global.__objectDepths[13] = 0; // oWell
	global.__objectDepths[14] = -10; // oSettlement
	global.__objectDepths[15] = -10; // oBunnySettlement
	global.__objectDepths[16] = -10; // oGreenSettlement
	global.__objectDepths[17] = -20; // oLadder
	global.__objectDepths[18] = 1; // oSolid
	global.__objectDepths[19] = -1; // oSolidBunny
	global.__objectDepths[20] = 0; // oSolidGreen
	global.__objectDepths[21] = 0; // oSolidVert
	global.__objectDepths[22] = -55; // oBunnySmall
	global.__objectDepths[23] = -55; // oGreenSmall
	global.__objectDepths[24] = 0; // oWellBunny
	global.__objectDepths[25] = 0; // oWellGreen
	global.__objectDepths[26] = -50; // oBunny
	global.__objectDepths[27] = -50; // oBunnyThirsty
	global.__objectDepths[28] = -50; // oGreen
	global.__objectDepths[29] = -50; // oGreenThirsty
	global.__objectDepths[30] = 0; // oTree
	global.__objectDepths[31] = 0; // oTreeBunny
	global.__objectDepths[32] = 0; // oTreeGreen
	global.__objectDepths[33] = -25; // oTurret
	global.__objectDepths[34] = -45; // oFragBunnyFinished
	global.__objectDepths[35] = -50; // oFragGreen
	global.__objectDepths[36] = -50; // oFragGreenSmall
	global.__objectDepths[37] = -50; // oFragBunny
	global.__objectDepths[38] = -50; // oFragBunnySmall
	global.__objectDepths[39] = -50; // oFragGreenFinished
	global.__objectDepths[40] = 0; // oFragBunnySmallFinished
	global.__objectDepths[41] = 0; // oGut
	global.__objectDepths[42] = 0; // oBlood
	global.__objectDepths[43] = 0; // oAsh
	global.__objectDepths[44] = 0; // oCarrotCasing
	global.__objectDepths[45] = 0; // oTurretBullet
	global.__objectDepths[46] = 0; // oFenceWhiteRight
	global.__objectDepths[47] = 0; // oFenceWhiteLeft
	global.__objectDepths[48] = 0; // oFenceBrownLeft
	global.__objectDepths[49] = 0; // oFenceBrownRight
	global.__objectDepths[50] = -99999999; // oFadeOut
	global.__objectDepths[51] = -99999999; // oFadeIn
	global.__objectDepths[52] = -10; // oTitle
	global.__objectDepths[53] = -10; // oButtonContinue
	global.__objectDepths[54] = -10; // oButtonNewGame
	global.__objectDepths[55] = -10; // oButtonQuit
	global.__objectDepths[56] = 0; // oTextFailure
	global.__objectDepths[57] = 0; // oTextSuccess
	global.__objectDepths[58] = 0; // oButtonTryAgain
	global.__objectDepths[59] = 0; // oButtonContinueWhite
	global.__objectDepths[60] = 0; // oButtonSaveQuit


	global.__objectNames[0] = "oGame";
	global.__objectNames[1] = "oCheat";
	global.__objectNames[2] = "oGameTitleScreen";
	global.__objectNames[3] = "oGameL1";
	global.__objectNames[4] = "oGameL2";
	global.__objectNames[5] = "oGameL3";
	global.__objectNames[6] = "oGameL4";
	global.__objectNames[7] = "oGameL5";
	global.__objectNames[8] = "oGameLTest";
	global.__objectNames[9] = "oCredits";
	global.__objectNames[10] = "oMusic";
	global.__objectNames[11] = "oFailureMessageInit";
	global.__objectNames[12] = "oPlayer1";
	global.__objectNames[13] = "oWell";
	global.__objectNames[14] = "oSettlement";
	global.__objectNames[15] = "oBunnySettlement";
	global.__objectNames[16] = "oGreenSettlement";
	global.__objectNames[17] = "oLadder";
	global.__objectNames[18] = "oSolid";
	global.__objectNames[19] = "oSolidBunny";
	global.__objectNames[20] = "oSolidGreen";
	global.__objectNames[21] = "oSolidVert";
	global.__objectNames[22] = "oBunnySmall";
	global.__objectNames[23] = "oGreenSmall";
	global.__objectNames[24] = "oWellBunny";
	global.__objectNames[25] = "oWellGreen";
	global.__objectNames[26] = "oBunny";
	global.__objectNames[27] = "oBunnyThirsty";
	global.__objectNames[28] = "oGreen";
	global.__objectNames[29] = "oGreenThirsty";
	global.__objectNames[30] = "oTree";
	global.__objectNames[31] = "oTreeBunny";
	global.__objectNames[32] = "oTreeGreen";
	global.__objectNames[33] = "oTurret";
	global.__objectNames[34] = "oFragBunnyFinished";
	global.__objectNames[35] = "oFragGreen";
	global.__objectNames[36] = "oFragGreenSmall";
	global.__objectNames[37] = "oFragBunny";
	global.__objectNames[38] = "oFragBunnySmall";
	global.__objectNames[39] = "oFragGreenFinished";
	global.__objectNames[40] = "oFragBunnySmallFinished";
	global.__objectNames[41] = "oGut";
	global.__objectNames[42] = "oBlood";
	global.__objectNames[43] = "oAsh";
	global.__objectNames[44] = "oCarrotCasing";
	global.__objectNames[45] = "oTurretBullet";
	global.__objectNames[46] = "oFenceWhiteRight";
	global.__objectNames[47] = "oFenceWhiteLeft";
	global.__objectNames[48] = "oFenceBrownLeft";
	global.__objectNames[49] = "oFenceBrownRight";
	global.__objectNames[50] = "oFadeOut";
	global.__objectNames[51] = "oFadeIn";
	global.__objectNames[52] = "oTitle";
	global.__objectNames[53] = "oButtonContinue";
	global.__objectNames[54] = "oButtonNewGame";
	global.__objectNames[55] = "oButtonQuit";
	global.__objectNames[56] = "oTextFailure";
	global.__objectNames[57] = "oTextSuccess";
	global.__objectNames[58] = "oButtonTryAgain";
	global.__objectNames[59] = "oButtonContinueWhite";
	global.__objectNames[60] = "oButtonSaveQuit";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
