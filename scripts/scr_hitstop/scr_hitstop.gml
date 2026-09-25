global.hitstop = false

function ative_hitstop(_tempo = 30)
{
	var _existe = instance_exists(obj_hitstop_manager)
	if(!_existe)  instance_create_depth(0,0,0,obj_hitstop_manager)
	
	global.hitstop = true
	obj_hitstop_manager.timer_hitstop = _tempo
}