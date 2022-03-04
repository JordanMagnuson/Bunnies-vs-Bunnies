script_execute(gameDrawEvent,0,0,0,0,0);
draw_set_font(fntCasualEncounter);
draw_set_color(c_black);
draw_set_halign(fa_left);
myX = __view_get( e__VW.XView, 0 );
myY = 0;
draw_rectangle(myX+120,myY,myX+180,myY+16,false);

//Level text
draw_text(120,440,string_hash_to_newline("This is your first burrow.#Right now you can't have any bunny babies,#because you have no water supply."))
draw_text(480,140,string_hash_to_newline("Each watering hole can support 5 bunnies.#Build a burrow on the left side of this platform by pressing X on your keyboard.#You cannot build directly on top of the water."))
draw_text(960,265,string_hash_to_newline("In the upper left corner you can see your carrot supply has shrunk.#It takes 100 carrot resources to make a burrow.#Make another burrow on this platform with the giant carrot,#then check your supply again. The more giant carrots you have,#the faster your carrot resource supply will grow."))
/*
if (global.minutesLeft > 0)
  draw_text(1200,440,"Continue to build burrows until your population reaches 20 rabbits.#You have " + string(global.minutesLeft) + " minutes and " + string(global.secondsLeft) + " seconds left.#The brown bunnies are breeding.");
else
  draw_text(1200,440,"Continue to build burrows until your population reaches 20 rabbits.#You have " + string(global.secondsLeft) + " seconds left.#The brown bunnies are breeding.");
*/
draw_text(1180,440,string_hash_to_newline("Continue to build burrows until your population reaches 20 adult rabbits.##Remember: the brown bunnies are breeding."));
draw_text(1520,100,string_hash_to_newline("A burrow's reach is limited. Choose locations wisely to claim multiple resources."))

/* */
/*  */
