alarm[0] = game_get_speed(gamespeed_fps)

criado_sequencia = in_sequence

atirando = function()
{
	var _tiro = instance_create_layer(x,y,"tiro",obj_tiro_inimigo1)
	_tiro.vspeed = 3
}