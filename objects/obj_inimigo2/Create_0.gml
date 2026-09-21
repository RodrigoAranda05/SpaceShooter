vida = 1

alarm[0] = game_get_speed(gamespeed_fps)

criado_sequencia = in_sequence

atirando = function()
{
	if(instance_exists(obj_player))
	{
		var _pitch = random_range(1,2)
		audio_play_sound(snd_shoot_inimigo,0,0 , , , _pitch)
		
		var _tiro = instance_create_layer(x,y,"tiro",obj_tiro_inimigo2)
		_tiro.vspeed = 3
	}
}

morrendo = function()
{
	if(vida <= 1)
	{
		var _pitch = random_range(0.1, 2.1)
		audio_play_sound(snd_explosao,0,0, , , _pitch)
		instance_destroy()
		
		screenshake(20)
		instance_create_layer(x,y,"inimigo",obj_morte_inimigo)

		var _chanceDrop = random(100);
		if(_chanceDrop > 95)
		{
			instance_create_layer(x,y,"inimigo",obj_powerup_tiro)
		}		
	}
	else
	{
		vida--
	}

}
