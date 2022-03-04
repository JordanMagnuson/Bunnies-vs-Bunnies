draw_set_alpha(1);
//draw_set_font(fntCasualEncounter);
draw_sprite(sSaveQuit,image_index,550,416);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(400,300, string_hash_to_newline(failureMessage));
