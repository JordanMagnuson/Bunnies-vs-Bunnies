function gameDrawEvent() {
	x = __view_get( e__VW.XView, 0 );
	y = 0;
	draw_set_alpha(1);
	depth = 5000;

	//HUD bar
	draw_set_color(c_black);
	draw_rectangle(x,y,x+800,y+20,false);

	//Sky
	draw_set_color($a37600);
	draw_rectangle(x,y+20,x+800,y+60,false);

	//Deep earth
	draw_set_color($133960);
	draw_rectangle(x,y+565,x+800,y+600,false);

	draw_set_color(c_white);

	//Timer
	/*
	draw_set_halign(fa_center);
	if (global.secondsLeft < 10)
	  draw_text(x+400,y+6, string(global.minutesLeft) + ":0" + string(global.secondsLeft));
	else
	  draw_text(x+400,y+6, string(global.minutesLeft) + ":" + string(global.secondsLeft));
	*/
  
	//Left side of screen
	draw_set_font(global.font5);	// Use sprite font from original game to avoid alignment issues.
	draw_set_halign(fa_left);
	hDrawLine = x;
	vDrawLine = y + 6;

	//////////////////////////////////////
	//White Bunnies
	////////////////////////////////////
	//Bunny count
	hDrawLine += 10;
	draw_sprite(sHudBunnies,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudBunnies);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.countAdultBunnies)));

	//Water count
	hDrawLine += (getNumberSpacing(global.countAdultBunnies) + 10);
	draw_sprite(sHudWater,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudWater);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.countBunnyWells)));

	//Carrot count
	//show_message(string(getNumberSpacing(global.countBunnyWells)));
	hDrawLine += (getNumberSpacing(global.countBunnyWells) + 10);
	draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudCarrots);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.countBunnyTrees) + "/" + string(global.countBunnyTimber)));

	//////////////////////////////////////
	//Brown Bunnies
	////////////////////////////////////

	//Green count
	hDrawLine += 20;
	hDrawLine += (getNumberSpacing(global.countBunnyTrees) + 1 + getNumberSpacing(global.countBunnyTimber) + 10); 
	draw_sprite(sHudGreens,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudGreens);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.countAdultGreens)));

	/*
	//Water count
	hDrawLine += (getNumberSpacing(global.countAdultGreens) + 10);
	draw_sprite(sHudWater,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudWater);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string(global.countGreenWells));

	//Carrot count
	//show_message(string(getNumberSpacing(global.countBunnyWells)));
	hDrawLine += (getNumberSpacing(global.countGreenWells) + 10);
	draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);
	hDrawLine += sprite_get_width(sHudCarrots);
	hDrawLine += 4;
	draw_text(hDrawLine,vDrawLine,string(global.countGreenTrees) + "/" + string(global.countGreenTimber));
	*/

	//////////////////////////////////////
	//Right side of screen 
	////////////////////////////////////
	draw_set_halign(fa_right);
	hDrawLine = x + 800;
	vDrawLine = y + 6;

	//Build cycle
	hDrawLine -= 10;
	switch (oPlayer1.buildIndex)
	{
	  case oPlayer1.SETTLEMENT:  
	    draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);  
	    hDrawLine -= 4;         
	    draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.SETTLEMENT_COST)));
	    hDrawLine -= getNumberSpacing(global.SETTLEMENT_COST);
	    hDrawLine -= 24;         
	    draw_sprite(sHudSettlement,0,hDrawLine,vDrawLine);
	    break;
	  case oPlayer1.TURRET:
	    draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);  
	    hDrawLine -= 4;         
	    draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.TURRET_COST)));
	    hDrawLine -= getNumberSpacing(global.TURRET_COST);
	    hDrawLine -= 24;         
	    draw_sprite(sHudTurret,0,hDrawLine,vDrawLine);
	    break;
	  case oPlayer1.WHITE_FENCE:
	    draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);  
	    hDrawLine -= 4;         
	    draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.FENCE_COST)));
	    hDrawLine -= getNumberSpacing(global.FENCE_COST);
	    hDrawLine -= 24;         
	    draw_sprite(sHudFenceWhite,0,hDrawLine,vDrawLine);
	    break;   
	  case oPlayer1.BROWN_FENCE:
	    draw_sprite(sHudCarrots,0,hDrawLine,vDrawLine);  
	    hDrawLine -= 4;         
	    draw_text(hDrawLine,vDrawLine,string_hash_to_newline(string(global.FENCE_COST)));
	    hDrawLine -= getNumberSpacing(global.FENCE_COST);
	    hDrawLine -= 24;         
	    draw_sprite(sHudFenceBrown,0,hDrawLine,vDrawLine);
	    break;           
	  default:
	    break;
	}
	hDrawLine -= 4;
	draw_text(hDrawLine,vDrawLine,string_hash_to_newline("Bld"));  



}
