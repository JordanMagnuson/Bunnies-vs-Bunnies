// NOTE: This function relies on Game Maker 8.1 Windows Dialogs extension, so will not work in GMS2.
function restartLevelmessage() {
	wd_message_set_text("Looks like you may be having a hard time with this level... would you like to try restarting?");
	answer = wd_message_show(wd_mk_information,wd_mb_yes,wd_mb_no,wd_mb_none);

	if (answer == 3)  //Yes Restart
	{
	  room_restart();
	}
	else if (answer == 4) //No Don't restart
	{
	  global.timer = 999999;
	  wd_message_simple("Keep in mind that you can restart a level at any time by pressing \"esc\" and then \"continue\" at the title screen.");
	}




}
