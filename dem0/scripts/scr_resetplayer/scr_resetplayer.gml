instance_activate_object(obj_player)
instance_activate_object(obj_camera)
global.wave = 0
global.maxwave = 0
room_goto(hubroom1)
audio_stop_all()
if instance_exists(obj_timesup)
    instance_destroy(obj_timesup)
global.seconds = 59
global.minutes = 2
obj_player.state = 0
obj_player.visible = 1
ds_list_clear(global.saveroom)
with (obj_player)
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[3] = -1
    alarm[4] = -1
    alarm[5] = -1
    alarm[6] = -1
    alarm[7] = -1
    alarm[8] = -1
    alarm[9] = -1
    alarm[10] = -1
    grav = 0.5
    hsp = 0
    vsp = 0
    xscale = 1
    yscale = 1
    movespeed = 0
    movespeedmax = 5
    jumpstop = 0
    start_running = 1
    state = 0
    turn = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    machslideAnim = 1
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 1
    machhitAnim = 0
    stompAnim = 0
    inv_frames = 0
    turning = 0
    hurtbounce = 0
    hurted = 0
    mach2 = 0
    input_buffer_jump = 8
    x = 370
    y = 402
    targetRoom = 0
    flash = 0
    global.key_inv = 0
    global.shroomfollow = 0
    global.cheesefollow = 0
    global.tomatofollow = 0
    global.sausagefollow = 0
    global.pineapplefollow = 0
    global.keyget = 0
    global.collect = 0
    global.ammo = 0
    global.panic = 0
    combo = 0
    in_water = 0
    key_particles = 0
    barrel = 0
    bounce = 0
    a = 0
    idle = 0
    attacking = 0
    slamming = 0
    superslam = 0
    machpunchAnim = 0
    punch = 0
    machfreefall = 0
    shoot = 1
    instakillmove = 0
    windingAnim = 0
    facestompAnim = 0
    ladderbuffer = 0
    toomuchalarm1 = 0
    dashdust = 0
    throwforce = 0
    hurtsound = 0
    bombpephitwall = 0
    idleanim = 0
    momemtum = 0
	global.machsound = 0
}
