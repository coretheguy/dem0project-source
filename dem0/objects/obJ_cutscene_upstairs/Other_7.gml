image_speed = 0
obj_player.targetRoom = targetRoom
obj_player.x = target_x
obj_player.y = target_y
instance_create(x, y, obj_fadeout)
obj_player.visible = 1
obj_camera.visible = 1
obj_player.state = 39
if instance_exists(obj_pizzakinshroom)
    obj_pizzakinshroom.visible = 1
if instance_exists(obj_pizzakincheese)
    obj_pizzakincheese.visible = 1
if instance_exists(obj_pizzakintomato)
    obj_pizzakintomato.visible = 1
if instance_exists(obj_pizzakinsausage)
    obj_pizzakinsausage.visible = 1
if instance_exists(obj_pizzakinpineapple)
    obj_pizzakinpineapple.visible = 1

