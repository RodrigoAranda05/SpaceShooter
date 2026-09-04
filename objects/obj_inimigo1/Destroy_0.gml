instance_create_layer(x,y,"inimigo",obj_morte_inimigo)


var _chanceDrop = random(100);

if(_chanceDrop > 95)
{
	instance_create_layer(x,y,"inimigo",obj_powerup_tiro)
}
