global.debug = false;

function screenshake(_treme = 1)
{
	if(instance_exists(obj_screenshake))
	{
		with(obj_screenshake)
		{
			// Se o treme novo for maior do que estou tremendo, Ai mudo o valor dele caso contrario nao faço nada
			if(_treme > treme)
			{
				treme = _treme
			}
		}
	}
}

function inicia_efeito_mola()
{
	xscale = 1
	yscale = 1
}
function efeito_mola(_xscale = 1, _yscale = 1)
{
	xscale = _xscale
	yscale = _yscale
}
function retorna_mola(_qtd = .1)
{
	xscale = lerp(xscale, 1, _qtd)
	yscale = lerp(yscale, 1, _qtd)
}
function desenha_efeito_mola()
{
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
}

function inicia_efeito_branco()
{
	tomei_dano = false
}
function timer_efeito_branco(_tempo = 1)
{
	tomei_dano = _tempo
}
function contador_efeito_branco()
{
	if(tomei_dano > 0) tomei_dano--
}
function desenha_efeito_branco(_funcao_desenho = 0)
{
	if(tomei_dano)
	{
		shader_set(sh_branco)
		_funcao_desenho()
		shader_reset()
	}
	else
	{
		_funcao_desenho()
	}
	
}