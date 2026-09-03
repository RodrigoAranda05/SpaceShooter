#region variaveis
vel = 3
espera_tiro = 10
timer_tiro = 0

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
		var _tiro = instance_create_layer(x,y,"tiro",obj_tiro)
		
		_tiro.vspeed -= 10
		
		timer_tiro = espera_tiro
	}
}