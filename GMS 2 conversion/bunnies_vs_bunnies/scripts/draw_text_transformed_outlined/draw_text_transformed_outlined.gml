/// @description draw_text_transformed_outlined(x,y,string,xscale,yscale,angle,outlinecolor,outlinescale)
/// @param x
/// @param y
/// @param string
/// @param xscale
/// @param yscale
/// @param angle
/// @param outlinecolor
/// @param outlinescale
function draw_text_transformed_outlined() {
	// Draws transformed text with a basic outline.
	// See https://gist.github.com/Auroriax/4d4420a51d2144211c8ae2d50acc17ae

	var xpos = argument[0];
	var ypos = argument[1];
	var text = argument[2];
	var xscale = argument[3];
	var yscale = argument[4];
	var angle = argument[5];
	var outlinecolor = argument[6];
	var outlinescale = argument[7];
	var orig_color = draw_get_color();

	draw_set_color(outlinecolor);
	draw_set_alpha(0.5);
	draw_text_transformed(xpos,ypos+outlinescale,text,xscale,yscale,angle);
	draw_text_transformed(xpos,ypos-outlinescale,text,xscale,yscale,angle);
	draw_text_transformed(xpos+outlinescale,ypos,text,xscale,yscale,angle);
	draw_text_transformed(xpos-outlinescale,ypos,text,xscale,yscale,angle);

	draw_set_alpha(1);
	draw_set_color(orig_color);
	draw_text_transformed(xpos,ypos,text,xscale,yscale,angle);


}
