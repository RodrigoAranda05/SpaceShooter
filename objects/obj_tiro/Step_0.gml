if(global.hitstop) exit;

if(y <= -32)
{
	instance_destroy()
}

image_xscale = lerp (image_xscale, 1, .1)
image_yscale = image_xscale

velv = lerp(velv, -vel, .1)
y += velv

