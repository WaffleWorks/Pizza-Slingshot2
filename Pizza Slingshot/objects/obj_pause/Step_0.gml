if keyboard_check_pressed(vk_escape) and room != Menu
{
	global.pause = not global.pause
}

if keyboard_check_pressed(vk_backspace) and global.pause = true
{
	//game_restart()
	instance_destroy(obj_control)
	room = Menu
}