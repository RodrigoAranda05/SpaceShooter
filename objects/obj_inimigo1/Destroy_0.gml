instance_create_layer(x,y,layer,obj_morte_inimigo)


var _chanceDrop = random(100);

if(_chanceDrop > 95)
{
	instance_create_layer(x,y,layer,obj_powerup_tiro)
}