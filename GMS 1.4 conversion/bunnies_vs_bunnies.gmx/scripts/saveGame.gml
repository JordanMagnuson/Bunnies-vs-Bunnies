saveFile = file_text_open_write("save_data.txt");
file_text_write_string(saveFile,string(global.lastRoom));
file_text_close(saveFile);
