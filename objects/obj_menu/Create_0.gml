menu = ["Jogar", "Tutorial", "Sair"]
atual = 0
margem = 20

function controla_menu()
{
	if(keyboard_check_pressed(vk_down))
	{
		atual += 1

		audio_play_sound(snd_shoot,0,0)
	
		margem = 0
	}
	if(keyboard_check_pressed(vk_up))
	{
		atual -= 1

		audio_play_sound(snd_shoot,0,0)
	
		margem = 0
	}

	atual = clamp(atual, 0, array_length(menu) -1)

	margem = lerp(margem, 20, .1)
}

function desenha_menu()
{
	var _meio_tela = display_get_gui_height() / 2
	var _alt = string_height("I")

	draw_set_valign(1)
	draw_set_font(fnt_space)

	for(var i = 0; i < array_length(menu); i++)
	{
		var _cor = c_white
		var _marg = 0
	
		if(i == atual)
		{
			_cor = c_red
			_marg = margem
		}
		draw_set_color(_cor)
	
		draw_text(20 + _marg, _meio_tela + i * _alt * 2.7 - 100, menu[i])

		draw_set_color(-1)
	}

	draw_set_valign(0)
	draw_set_font(-1)
}

