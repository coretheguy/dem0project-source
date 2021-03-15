if (ds_list_find_index(global.saveroom, id) == -1)
{
ds_list_add(global.saveroom, id)
instance_create((x + 16), y, obj_metaldebris)
instance_create((x + 16), y, obj_metaldebris)
    var lay_id = layer_get_id("Tiles_1")
    var map_id = layer_tilemap_get_id(lay_id)
    var data = tilemap_get_at_pixel(map_id, x, y)
    data = tile_set_empty(data)
    tilemap_set_at_pixel(map_id, data, x, y)
if global.machsound = 1
scr_sound(sfx_metaldestroy)
else
scr_sound(sfx_sagemetalbreak)
with (obj_camera)
{
    shake_mag = 10
    shake_mag_acc = (20 / room_speed)
}
}
