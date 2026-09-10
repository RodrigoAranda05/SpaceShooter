global.debug = false;

function screenshake(_treme = 1)
{
	if(instance_exists(obj_screenshake))
	{
		with(obj_screenshake)
		{
			// Se o treme novo for maior do que estou tremendo, Ai mudo o valor dele caso contrario nao faço nada
			if(_treme > treme)
			{
				treme = _treme
			}
		}
	}
}