// You can write your code in this editor
draw_set_font(fnt_daydream)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if global.pause = true
{
	alpha = 1
	draw_set_color(c_black)

	
	draw_set_alpha(alpha)
	draw_rectangle(-4,-4,display_get_gui_width()+4,display_get_gui_height()+4,false)
	draw_set_color(c_white)
	draw_text(room_width/2,room_height/2,"Game Paused\n\nPress Escape to Unpause\n\nPress Backspace\nto Return to Menu")
	instance_deactivate_all(true)
	instance_activate_object(obj_music)
}
if global.pause = false
{
	instance_activate_all()
}