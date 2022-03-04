image_speed = 0;

// Button position
x = room_width*2/3;
y = 416;

//Failure messages
ds_list_shuffle(global.failureMessages);
failureMessage = ds_list_find_value(global.failureMessages,0);
ds_list_delete(global.failureMessages,0);

