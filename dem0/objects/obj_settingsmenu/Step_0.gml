scr_getinput()
if createdthings = 0
{
	instance_create(((__view_get(0, 0) + 480)), ((__view_get(1, 0) + 145)), obj_exit)
	with instance_create(x, y, obj_cursor)
		depth = -1001
	selecting = 1
	createdthings = 1
}
instance_deactivate_object(obj_pause)

if instance_exists(obj_keyconfig)
	obj_exit.visible = 0
else
	obj_exit.visible = 1

if selecting = 1
	obj_exit.selected = 1
else obj_exit.selected = 0

if obj_exit.selected = 1
{
	obj_cursor.x = obj_exit.x - 96
	obj_cursor.y = obj_exit.y - 15
}

if selecting < 4 && key_down2 && !instance_exists(obj_keyconfig)
	selecting += 1

if selecting > 1 && key_up2 && !instance_exists(obj_keyconfig)
	selecting -= 1

if selecting = 2
{
	obj_cursor.x = __view_get(0, 0) + 200
	obj_cursor.y = __view_get(1, 0) + 210
}

if selecting = 2 && key_jump
{
		if global.machsound < 4
		global.machsound += 1
		if global.machsound = 4
			global.machsound = 1
			
		if global.machsound = 1
			scr_sound(sfx_collect)
		if global.machsound = 2
			scr_sound(sfx_golfcollect)
		if global.machsound = 3
			scr_sound(sfx_sagecollect)
}

if selecting = 3
{
	obj_cursor.x = __view_get(0, 0) + 180
	obj_cursor.y = __view_get(1, 0) + 260
}

if selecting = 3 && key_jump
{
	if global.zoomorshake < 4
		global.zoomorshake += 1
	if global.zoomorshake = 4
		global.zoomorshake = 1
	
	//if global.zoomorshake = 2
	//{
	//	obj_camera.zoomh = 430
	//	obj_camera.zoomw = 750
	//}
	//if global.zoomorshake = 3
	//{
	//{
    //with(obj_camera)
    //{
    //    shake_mag = 5
    //    shake_mag_acc = (10 / room_speed)
    //}
	//}
	//}
}

if selecting = 4 && key_jump && !instance_exists(obj_keyconfig)
{
	with instance_create(__view_get(0, 0) + 480, __view_get(1, 0) + 240, obj_keyconfig)
		depth = -1001
}

if selecting = 4
{
	obj_cursor.x = __view_get(0, 0) + 320
	obj_cursor.y = __view_get(1, 0) + 300
}

if key_jump && obj_exit.selected = 1
{
	ini_open("saveData.ini")
	ini_write_string("Settings", "machsound", global.machsound)
	ini_write_string("Settings", "zoomorshake", global.zoomorshake)
	ini_close()
	instance_destroy()
	instance_destroy(obj_cursor)
	instance_destroy(obj_exit)
	instance_activate_object(obj_pause)
}