scr_getinput()
if (a != 255)
    a += 1
image_blend = make_color_rgb(a, a, a)
obj_camera.visible = 0
sprite_index = spr_player_bossdefeat
scr_collideandmove()
