function loadGame() {
	if (file_exists("save_data.txt"))
	{
	  saveFile = file_text_open_read("save_data.txt");
	  lastRoom = file_text_read_string(saveFile);
	  file_text_close(saveFile);
	  room_goto(real(lastRoom));
	}
	else
	  room_goto(level01);



}
