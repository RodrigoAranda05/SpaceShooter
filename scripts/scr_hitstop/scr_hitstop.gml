global.hitstop = false

function ative_hitstop(_tempo = 30)
{
	var _existe = instance_exists(obj_hitstop_manager)
	if(!_existe)  instance_create_depth(0,0,0,obj_hitstop_manager)
	
	global.hitstop = true
	obj_hitstop_manager.timer_hitstop = _tempo
	
	trava_background(obj_hitstop_manager.lista_background)
}

function pega_background()
{
	var _layers = layer_get_all()
	var _bgs = []
		
	for(var i = 0; i < array_length(_layers); i++)
	{
		var _atual = _layers[i]
		var _background = layer_background_get_id(_atual)
		
		if(_background != -1)
		{
			var _nome = layer_get_name(_atual)
			array_push(_bgs,_nome)

		}
	}
	
	return _bgs
}

function trava_background(_lista_backgrounds)
{
	for(var i = 0; i < array_length(_lista_backgrounds); i++)
	{
		array_push(obj_hitstop_manager.bgs_hspeed, layer_get_hspeed(_lista_backgrounds[i]))
		array_push(obj_hitstop_manager.bgs_vspeed, layer_get_vspeed(_lista_backgrounds[i]))
		
		layer_hspeed(_lista_backgrounds[i],0)
		layer_vspeed(_lista_backgrounds[i],0)
	}
}

function destrava_background(_lista_background, _bgs_hspeed, _bgs_vspeed)
{
	for(var i = 0; i < array_length(_lista_background); i++)
	{
		layer_hspeed(_lista_background[i],_bgs_hspeed[i])
		layer_vspeed(_lista_background[i],_bgs_vspeed[i])
	}
}