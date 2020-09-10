if ((event_type == 8) && (event_number == 0))
{
    surface_reset_target()
	if instance_exists(obj_camera)
	{
    shader_set(shdr_wind)
	
	obj_camera.angle += 0.1
	obj_camera.amplitude = 0.02
	obj_camera.freq = 0.5
	obj_camera.wavel = 2
	
    var time_id = shader_get_uniform(2, "time")
    shader_set_uniform_f(time_id, obj_camera.angle)
	var amp_id = shader_get_uniform(2, "amp")
    shader_set_uniform_f(amp_id, obj_camera.amplitude)
	var freq_id = shader_get_uniform(2, "freq")
    shader_set_uniform_f(freq_id, obj_camera.freq)
	var wavel_id = shader_get_uniform(2, "wave")
    shader_set_uniform_f(wavel_id, obj_camera.wavel)
    
    draw_surface(global.panicbg_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
    shader_reset()
	}
}