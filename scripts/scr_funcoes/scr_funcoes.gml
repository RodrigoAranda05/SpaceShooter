global.debug = false;

function screenshake(_treme = 1)
{
	if(instance_exists(obj_screenshake))
	{
		obj_screenshake.treme = _treme
	}
}