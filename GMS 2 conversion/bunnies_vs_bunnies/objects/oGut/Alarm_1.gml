if fade=true
{
image_alpha-=(0.10*((global.countBlood+100)/100));//this give a cool fade away effect
}

if image_alpha<=0//this will destroy the object when it can no longer be faded
{
instance_destroy();
}
action_set_alarm(15, 1);
