draw_self()
font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if place_meeting(x, y, obj_player)
{
	switch targetRoom
	{
		case level2_r1:
			draw_text(x + 81, (y + 60), "CHEESY WATERWORKS")
			break
		case trial_start:
			draw_text(x + 81, (y + 60), string_hash_to_newline("PEPPERMAN'S TIME#CHALLENGE"))
			break
		case castle_1:
			draw_text(x + 81, (y + 60), "PIZZA MANSION")
			break
		case sky_1:
			draw_text(x + 81, (y + 60), "TOPPIN CLOUDS")
			break
		case volcano_1:
			draw_text(x + 81, (y + 60), "SAUCE VOLCANO")
			break
		case golf_room1:
			draw_text(x + 81, (y + 60), "ANCIENT GOLF")
			break
	}
}