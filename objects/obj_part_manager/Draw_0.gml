if(instance_exists(obj_partizinha))
{
	gpu_set_blendenable(bm_add)
	with(obj_partizinha)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
	//gpu_set_blendenable(bm_normal)
}