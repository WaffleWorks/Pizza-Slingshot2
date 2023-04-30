x = room_width / 2
y = room_height / 2
image_xscale = 0
image_yscale = 0
image_alpha = 5

expanded = false
reset = false
fail = false
success = false
text_xscale = 0
text_yscale = 0
text_alpha = 2
text_ydiff = 0
fade = false
gameover = false

depth -= 300

if global.fail = true and !audio_is_playing(snd_fail)
{
	audio_play_sound(snd_fail,0,false)
	audio_stop_sound(snd_fade)	
}