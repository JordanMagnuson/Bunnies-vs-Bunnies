script_execute(gameDrawEvent,0,0,0,0,0);
//Level text
draw_set_font(fntCasualEncounter);
draw_set_color(c_black);
draw_set_halign(fa_left);
//draw_text(120,420,string_hash_to_newline("Those other bunnies are threatening the security of this region.#Monopolize the available resources, and end the level#with at least twice their population."));
draw_text(120,420,string_hash_to_newline("Those other bunnies are trying to take over.#Claim the available resources, and end the level#with at least twice their population."));
draw_text(830,110,string_hash_to_newline("If you ever run into trouble,#you can hit \"R\" at any time to restart a level."));