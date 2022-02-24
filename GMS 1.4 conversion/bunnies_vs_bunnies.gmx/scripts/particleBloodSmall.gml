//Thanks to Danny for a nice tutorial on particle blood
//http://gmc.yoyogames.com/lofiversion/index.php/t315900.html

repeat(5)//tell how many particles of blood to make (i wouldnt go over 1000 or below 10)
{
  instance_create(x,y,oBlood);
}
repeat(2)//tell how many particles of guts to make (for guts i wouldnt go over 100 or below 3)
{
  instance_create(x,y,oGut);
}
