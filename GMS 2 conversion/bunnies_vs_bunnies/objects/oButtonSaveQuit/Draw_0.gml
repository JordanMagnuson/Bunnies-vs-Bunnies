draw_set_alpha(1);
//draw_set_font(fntCasualEncounter);
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width/2,300, string_hash_to_newline(failureMessage));
