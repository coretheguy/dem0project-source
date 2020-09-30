function scr_windybg_end() {
	if ((event_type == 8) && (event_number == 0))
	{
	    surface_reset_target()
		if instance_exists(obj_camera) && instance_exists(obj_wavybg)
		{
	    shader_set(shdr_wind)
	
		obj_camera.angle += obj_wavybg.time
		obj_camera.amplitude = obj_wavybg.amp
		obj_camera.freq = obj_wavybg.freq
		obj_camera.wavel = obj_wavybg.wave
	
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


}
