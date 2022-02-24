script_execute(gameDrawEvent,0,0,0,0,0);
x = 0;
y = 0;
draw_set_alpha(1);

//Sky
draw_set_color($a37600);
draw_rectangle(x,y,x+800,y+80,false);

//Version number
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(740,71,string_hash_to_newline("v 1.00"));

