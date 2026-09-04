vida = 10
estado = "chegando"
tempo_carregando = game_get_speed(gamespeed_fps) * .7
timer_carregando = 0
contador_tiro = 0
decidi_direcao = false

maquina_estado = function()
{
	switch(estado)
	{
		case "chegando":
		{
			if(y < 160)
			{
				vspeed = 1.2
			}
			else
			{
				estado = "carregando"
			}
		}
		break
		
		case "carregando":
		{
			vspeed = 0
			timer_carregando++
			
			if(timer_carregando > tempo_carregando)
			{
				estado = choose("atirando", "atirando2")
				timer_carregando = 0
			}
		}
		break
		
		case "atirando":
		{
			if(instance_exists(obj_player))
			{
				var _dir = point_direction(x,y,obj_player.x, obj_player.y)
				var _tiro = instance_create_layer(x,y,"tiro",obj_tiro_inimigo3)
			
				_tiro.vspeed = 3
				_tiro.direction = _dir
				_tiro.image_angle = _dir + 90
				
				contador_tiro++
			}
		
			if(contador_tiro >= 3)
			{
				estado = "fugindo"
			}
			else
			{
				estado = "carregando"
			}
		}
		break
		
		case "atirando2":
		{
			var _ang = 255
			repeat(3)
			{
				var _tiro = instance_create_layer(x,y,"tiro",obj_tiro2_inimigo3)
				_tiro.speed = 4
				_tiro.direction = _ang
				_tiro.image_angle = _ang
				
				_ang += 15
				contador_tiro++
			}
			
			if(contador_tiro >= 3)
			{
				estado = "fugindo"
			}
			else
			{
				estado = "carregando"
			}
		}
		
		case "fugindo":
		{
			if(!decidi_direcao)
			{
				hspeed = choose(-1,1)
				decidi_direcao = true
			}
			vspeed = -1.5
			
			if(y < -50)
			{
				instance_destroy()
			}
		}
		break
	}
}

morrendoInimigo3 = function()
{
	vida--
	if(vida == 0)
	{
		instance_destroy()
		instance_create_layer(x,y,layer,obj_morte_inimigo)
	}
}