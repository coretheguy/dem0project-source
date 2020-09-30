font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)

//background
draw_rectangle_color(0, 0, room_width, room_height, color, color, color, color, 0)
draw_sprite_tiled(spr_secretwall2, 0, x, y)
vspeed = 1
hspeed = -1

//text
if !instance_exists(obj_keyconfig)
{
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 40, "SETTINGS")

//options
if global.machsound = 1
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 200, "MACH SOUNDS: DEMO 0")
if global.machsound = 2
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 200, "MACH SOUNDS: GOLF")
if global.machsound = 3
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 200, "MACH SOUNDS: SAGE")

if global.zoomorshake = 1
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 240, "ENEMY INSTAKILL: BASIC")
if global.zoomorshake = 2
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 240, "ENEMY INSTAKILL: ZOOM")
if global.zoomorshake = 3
	draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 240, "ENEMY INSTAKILL: SHAKE")
	
draw_text(__view_get(0, 0) + 480, __view_get(1, 0) + 280, "KEY CONFIG")
}