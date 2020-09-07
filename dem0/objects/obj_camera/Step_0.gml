var target;
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
    shake_mag = 2
    shake_mag_acc = (4 / room_speed)
}
else if ((global.panic == 1) && (global.minutes < 1))
{
    shake_mag = 3
    shake_mag_acc = (5 / room_speed)

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
	__view_set(0, 0, (target.x - (__view_get(2, 0) / 2)))
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))))
    __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)))
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - __view_get(3, 0))))
    if (shake_mag != 0)
    {
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(0, 0, clamp(__view_get(0, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_width - __view_get(2, 0)) + irandom_range((-shake_mag), shake_mag))))
        __view_set(1, 0, ((target.y - (__view_get(3, 0) / 2)) + irandom_range((-shake_mag), shake_mag)))
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - __view_get(3, 0)) + irandom_range((-shake_mag), shake_mag))))
    }
}


