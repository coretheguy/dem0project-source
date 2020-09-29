hits += 1
if image_xscale = 1
	hsp = 10
else if image_xscale = -1
	hsp = -20
vsp = -20
avoidstunlocking = 1

if hits = 4
{
instance_destroy()
audio_stop_all()
if !audio_is_playing(music_victory) && victory = 0
{
	victory = 1
	audio_play_sound(music_victory, 5, 1)
}
instance_create(x, y, obj_bossdefeatflash)
obj_player.image_index = 0
obj_player.state = 30
obj_player.x = 464
obj_player.y = 322
obj_camera.timestop = 1
obj_player.image_blend = make_color_hsv(255, 255, 0)
obj_player.a = 0
obj_player.movespeed = 0
obj_player.hsp = 0
global.panic = 0
timestop = 1
var lay_id1 = layer_get_id("Backgrounds_funny")
var lay_id2 = layer_get_id("Backgrounds_01")
var lay_id3 = layer_get_id("Backgrounds_bottomcloud")

var back_id1 = layer_background_get_id(lay_id1)
var back_id2 = layer_background_get_id(lay_id2)
var back_id3 = layer_background_get_id(lay_id3)

layer_background_change(back_id1, bg_title1)
layer_background_alpha(back_id1, 1)
layer_background_alpha(back_id2, 1)
layer_background_alpha(back_id3, 0)
}
