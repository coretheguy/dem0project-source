if instance_exists(obj_keyconfig)
    visible = 0
else
    visible = 1
if keyboard_check(vk_f1)
{
    ini_open("saveData.ini")
    global.key_up = ini_write_string("ControlsKeys", "up", 38)
    global.key_right = ini_write_string("ControlsKeys", "right", 39)
    global.key_left = ini_write_string("ControlsKeys", "left", 37)
    global.key_down = ini_write_string("ControlsKeys", "down", 40)
    global.key_jump = ini_write_string("ControlsKeys", "jump", 90)
    global.key_slap = ini_write_string("ControlsKeys", "slap", 86)
    global.key_attack = ini_write_string("ControlsKeys", "attack", 88)
    ini_close()
}
ini_open("saveData.ini")
global.key_up = ini_read_string("ControlsKeys", "up", 38)
global.key_right = ini_read_string("ControlsKeys", "right", 39)
global.key_left = ini_read_string("ControlsKeys", "left", 37)
global.key_down = ini_read_string("ControlsKeys", "down", 40)
global.key_jump = ini_read_string("ControlsKeys", "jump", 90)
global.key_slap = ini_read_string("ControlsKeys", "slap", 86)
global.key_attack = ini_read_string("ControlsKeys", "attack", 88)
global.key_start = 27
ini_close()
if (!instance_exists(obj_keyconfig))
    scr_getinput()
if (key_up && (!instance_exists(obj_keyconfig)))
    optionselect = 0
else if (key_down && (!instance_exists(obj_keyconfig)))
    optionselect = 1
if (optionselect == 0)
    obj_cursor.y = (y - 24)
else if (optionselect == 1)
    obj_cursor.y = (y + 18)
if ((optionselect == 0) && (key_jump && (!instance_exists(obj_keyconfig))))
{
    selectedplay = 1
}
if ((optionselect == 1) && (key_jump && (!instance_exists(obj_keyconfig))))
    instance_create(x, y, obj_keyconfig)