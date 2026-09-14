controla_player()

if(keyboard_check_released(vk_tab))
{
	global.debug = !global.debug
}

// Escudo segue o player se o escudo existir 
if(instance_exists(meu_escudo))
{
	meu_escudo.x = x
	meu_escudo.y = y
}
else
{
	meu_escudo = noone
}

retorna_mola(.3)
contador_efeito_branco()