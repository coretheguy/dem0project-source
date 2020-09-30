draw_self()
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if place_meeting(x, y, obj_player)
{
	if level = "sewer"
		draw_text(x + 48, (y - 50), sewercollect)
	if level = "time"
	{
		draw_text(x + 48, (y - 50), timecollect)
		draw_text(x + 48, (y - 90), timeleft)
	}
	if level = "clouds"
		draw_text(x + 48, (y - 50), cloudscollect)
	if level = "castle"
		draw_text(x + 48, (y - 50), castlecollect)
}