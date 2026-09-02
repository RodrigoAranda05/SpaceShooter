
controla_player = function()
{
	var _cima, _baixo, _esq, _dire, _atirar
	
	_cima = keyboard_check(ord("W")) or keyboard_check(vk_up)
	_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down)
	_esq = keyboard_check(ord("A")) or keyboard_check(vk_left)
	_dire = keyboard_check(ord("D")) or keyboard_check(vk_right)
	_atirar = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	if(_cima)
	{
		y -= .5
	}
	if(_baixo)
	{
		y += .5
	}
	if(_esq)
	{
		x -= .5
	}
	if(_dire)
	{
		x += .5
	}
	if(_atirar)
	{
	}
}