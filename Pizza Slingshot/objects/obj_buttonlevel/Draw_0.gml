draw_self()
draw_set_color(text_color)
draw_set_font(fnt_earlygameboy)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if unlocked = true
{
	draw_text_outlined2(x+2,y+1+(2*(image_index = 2)),text_color,text_color,string(str))
}else
{
	draw_sprite(spr_buttonlock,0,x,y+(2*(image_index = 2)))
}