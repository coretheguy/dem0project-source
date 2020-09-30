var target;
if (obj_player.state == 24)
{
    if (zoomw > 640)
        zoomw -= 0.5
    if (zoomh > 360)
        zoomh -= 0.5
    camera_set_view_size(view_camera[0], zoomw, zoomh)
}
else
{
    if (zoomw < 960)
        zoomw += 10
    if (zoomh < 540)
        zoomh += 10
    if (zoomw > 960)
        zoomw -= 10
    if (zoomh > 540)
        zoomh -= 10
    camera_set_view_size(view_camera[0], zoomw, zoomh)
}

if (global.panic == 1)
    timestop = 0
else
    timestop = 1
//if ((room == normalT_room1) || ((room == normalT_room2) || ((room == normalT_room3) || ((room == normalT_room4) || (room == normalT_runbackpassage)))))
//{
//    background_x[0] = (lerp(0, (room_width - background_width[0]), (view_xview[0] / (room_width - view_wview[0]))) / 6)
//    background_y[0] = (lerp(0, (room_height - background_height[0]), (view_yview[0] / (room_height - view_hview[0]))) / 6)
//    background_x[1] = (lerp(0, (room_width - background_width[0]), (view_xview[0] / (room_width - view_wview[0]))) / 8)
//    background_y[1] = (lerp(0, (room_height - background_height[0]), (view_yview[0] / (room_height - view_hview[0]))) / 8)
//    background_xscale[1] = 0.5
//    background_yscale[1] = 0.5
//    background_x[2] = (lerp(0, (room_width - background_width[0]), (view_xview[0] / (room_width - view_wview[0]))) / 10)
//    background_y[2] = (lerp(0, (room_height - background_height[0]), (view_yview[0] / (room_height - view_hview[0]))) / 10)
//    background_xscale[2] = 0.8
//    background_yscale[2] = 0.8
//    background_x[4] = (lerp(0, (room_width - background_width[0]), (view_xview[0] / (room_width - view_wview[0]))) / 16)
//    background_y[4] = (lerp(0, (room_height - background_height[0]), (view_yview[0] / (room_height - view_hview[0]))) / 16)
//    background_xscale[4] = 0.7
//    background_yscale[4] = 0.7
//    background_y[4] = 300
//}
//if (room == normalT_bonus1)
//{
//    background_x[1] = (lerp(0, (room_width - background_width[0]), (view_xview[0] / (room_width - view_wview[0]))) / 6)
//    background_y[1] = (lerp(0, (room_height - background_height[0]), (view_yview[0] / (room_height - view_hview[0]))) / 6)
//}
// bye bye, normalT
if room == titlescreen
	visible = 0
else
	visible = 1
	
if instance_exists(obj_cutscene_upstairs)
	visible = 0
else
	visible = 1
if (room == timesuproom)
    timestop = 1
if ((global.seconds == 0) && ((global.minutes == 0) && (room != timesuproom)))
{
    obj_player.state = 14
    room = timesuproom
    obj_player.image_index = 0
}
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes -= 1
}
if (global.seconds > 59)
{
    global.minutes += 1
    global.seconds -= 59
}
if ((global.panic == 1) && (global.minutes >= 1) && (global.minutes < 3))
{
	if room != rm_boss
	{
    shake_mag = 2
    shake_mag_acc = (4 / room_speed)
	if camangle > 0
		camangle -= 0.01
	if camangle = 0
		camangle = 0
	}
}
else if ((global.panic == 1) && (global.minutes < 1))
{
	if room != rm_boss
	{
    shake_mag = 3
    shake_mag_acc = (5 / room_speed)
	if camangle < 3
		camangle += 0.01
	}
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}


if (instance_exists(obj_player) && ((obj_player.state != 14) && (obj_player.state != 33)))
{
    target = obj_player
    if (obj_player.state == 68) || obj_player.state = 15
    {
        if (chargecamera > (obj_player.xscale * 100))
            chargecamera -= 2
        if (chargecamera < (obj_player.xscale * 100))
            chargecamera += 2
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + chargecamera))
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2
        if (chargecamera < 0)
            chargecamera += 2
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + chargecamera))
    }
	if debugcam = 0
		__view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
    __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)))
	if debugcam = 0
		__view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - __view_get(3, 0))))
	__view_set(4, 0, camangle)
    if (shake_mag != 0)
    {
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
		if debugcam = 0
			__view_set(0, 0, clamp(__view_get(0, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_width - __view_get(2, 0)) + irandom_range((-shake_mag), shake_mag))))
		__view_set(1, 0, ((target.y - (__view_get(3, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
		if debugcam = 0	
			__view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - __view_get(3, 0)) + irandom_range((-shake_mag), shake_mag))))
    }
}


if global.frozen = 1 && global.level = "volcano"
{
var lay_id = layer_get_id("Backgrounds_1")
var back_id = layer_background_get_id(lay_id)
var lay_id2 = layer_get_id("Backgrounds_2")
var back_id2 = layer_background_get_id(lay_id2)
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
	layer_background_sprite(back_id, frozenvolcanobg4)
	layer_background_sprite(back_id2, frozenvolcanobg1)
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
	if audio_is_playing(mu_volcano)
		audio_stop_sound(mu_volcano)
	if !audio_is_playing(music_freezer)
		audio_play_sound(music_freezer, 3, 1)
}

if room = rm_boss
{
	if instance_exists(obj_pepperman)
	{
	if camangle != 0
		camangle -= 0.01 * obj_pepperman.image_xscale
	}
	if !instance_exists(obj_pepperman)
		camangle = 0
}
