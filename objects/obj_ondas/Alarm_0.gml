
if(atual < array_length(ondas))
{
	layer_sequence_create("Sq_inimigo",0,0,ondas[atual])
	atual++
	
	alarm[0] = 200
}