var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id(lay_id)
var lay_id2 = layer_get_id("Backgrounds_2")
var back_id2 = layer_background_get_id(lay_id2)
var lay_id2alt = layer_get_id("Backgrounds_Ground2")
var back_id2alt = layer_background_get_id(lay_id2alt)
var lay_id3 = layer_get_id("Backgrounds_3")
var back_id3 = layer_background_get_id(lay_id3)
var lay_id4 = layer_get_id("Backgrounds_lava")
var back_id4 = layer_background_get_id(lay_id4)
var lay_id5 = layer_get_id("Backgrounds_smoke")
var back_id5 = layer_background_get_id(lay_id5)
var lay_id6 = layer_get_id("Tiles_1")
var lay_id7 = layer_get_id("Tiles_2")

var tiles_id1 = layer_tilemap_get_id(lay_id6)
var tiles_id2 = layer_tilemap_get_id(lay_id7)

if place_meeting(x, y - 1, obj_player) && image_index = 0
{
	instance_create(x, y, obj_icefade)
	layer_background_sprite(back_id, frozenvolcanobg4)
	layer_background_sprite(back_id2, frozenvolcanobg1)
	layer_background_sprite(back_id2alt, frozenvolcanobg1)
	layer_background_sprite(back_id3, frozenvolcanobg3)
	layer_background_sprite(back_id4, frozenvolcanobg5)
	layer_background_sprite(back_id5, frozenvolcanobg2)
	tilemap_tileset(tiles_id1, volcano2)
	tilemap_tileset(tiles_id2, volcano2_props)
	layer_hspeed(lay_id4, 0)
	layer_vspeed(lay_id4, 0)
	layer_hspeed(lay_id5, 3)
	layer_vspeed(lay_id5, 1)
	layer_background_vtiled(back_id5, 1)
	image_index = 1
	audio_stop_all()
	if !audio_is_playing(music_freezer)
		audio_play_sound(music_freezer, 3, 1)
	global.frozen = 1
	ds_list_add(global.saveroom, id)
}