if(global.hitstop) exit;

if(y <= -32)
{
	instance_destroy()
}

image_xscale = lerp (image_xscale, 1, .1)
image_yscale = image_xscale

velv = lerp(velv, -vel, .1)
y += velv

var _rastro = instance_create_layer(x,y,layer,obj_rastro_tiro)
_rastro.cor = cor

