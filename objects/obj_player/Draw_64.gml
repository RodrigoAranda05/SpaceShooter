if(global.debug)
{
	draw_text(20,20,"Level tiro: " + string(levelTiro))
	draw_text(20,35,"Vida atual: " + string(vida))
}
var _gui_height = display_get_gui_height()

desenha_icone(vida, spr_gui_vida, _gui_height - 30)
desenha_icone(escudo, spr_gui_escudo, _gui_height - 55)