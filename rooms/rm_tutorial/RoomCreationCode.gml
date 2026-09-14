
if(!instance_exists(obj_player))
{
	layer_sequence_create("transicao", room_width/2, room_height/2, sq_transicao2)

	global.destino = rm_inicio	
}
