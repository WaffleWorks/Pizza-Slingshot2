if frame_index = 0 or frame_index = 5
{
	y_diff = 0
}else if frame_index = 1 or frame_index = 4
{
	y_diff = -1
}else if frame_index = 2 or frame_index = 3
{
	y_diff = -2
}else if frame_index = 6 or frame_index = 9
{
	y_diff = 1
}else if frame_index = 7 or frame_index = 8
{
	y_diff = 2
}

y = y_init + y_diff