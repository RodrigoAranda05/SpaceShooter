#region variaveis
vel = 3
vida = 3
invencibilidade = false
escudo = 3
meu_escudo = noone
velTiro = -10
espera_tiro = 10
timer_tiro = 0
levelTiro = 1

#endregion

controla_player = function()
{
	// Pegando as teclas
	var _cima, _baixo, _esq, _dire, _atirar
	
	_cima = keyboard_check(ord("W")) or keyboard_check(vk_up)
	_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down)
	_esq = keyboard_check(ord("A")) or keyboard_check(vk_left)
	_dire = keyboard_check(ord("D")) or keyboard_check(vk_right)
	_atirar = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	// Movimentação
	var _velh = (_dire - _esq) * vel
	var _vely = (_baixo - _cima) * vel
	
	x += _velh
	y += _vely
	
	// Limitando a tela pro player nao fugir
	x = clamp(x, sprite_width/2, room_width - sprite_width/2)
	y = clamp(y, sprite_width/2, room_height - sprite_width/2)
	
	// atirar
	timer_tiro--
	if(_atirar && timer_tiro <= 0)
	{
		if(levelTiro == 1)
			tiro_1()
		else if(levelTiro == 2)
			tiro_2()
		else if(levelTiro == 3)
			tiro_3()
		
		timer_tiro = espera_tiro
	}
	
	if(keyboard_check_released(ord("E")))
	{
		usa_escudo()
	}	
}

tiro_1 = function()
{
	var _tiro = instance_create_layer(x,y,"tiro",obj_tiro)
		
	_tiro.vspeed = velTiro
}

tiro_2 = function()
{
	var _tiro = instance_create_layer(x -7,y,"tiro",obj_tiro)
	_tiro.vspeed = velTiro
	
	_tiro = instance_create_layer(x +7,y,"tiro",obj_tiro)	
	_tiro.vspeed = velTiro
}

tiro_3 = function()
{
	tiro_1()
	tiro_2()
}

ganha_level_tiro = function()
{
	if(levelTiro < 3)
	{
		levelTiro++	
	}
}

desenha_icone = function(_contagem, _spr, _altura)
{
	var _espaco = 20
	repeat(_contagem)
	{
		draw_sprite_ext(_spr, 1, _espaco, _altura, 1, 1, 1, c_white, 1)
		_espaco += 30
	}
}

perde_vida = function()
{
	if(!invencibilidade)
	{
		if(meu_escudo == noone)
		{
			if(vida > 0)
			{
				vida--
				invencibilidade = true
				alarm[0] = game_get_speed(gamespeed_fps)
			}
			else
			{
				instance_destroy()
			}
		}
	}
}

usa_escudo = function()
{
	if(escudo > 0 && meu_escudo == noone)
	{
		escudo--
		meu_escudo = instance_create_layer(x,y,escudo,obj_escudo)
	}
}
