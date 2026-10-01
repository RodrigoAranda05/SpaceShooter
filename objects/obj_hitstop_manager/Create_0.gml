timer_hitstop = 0

lista_background = pega_background()
bgs_hspeed = []
bgs_vspeed = []

desfaz_hitstop = function()
{
	if(!global.hitstop) 
	{
		return
	}
	
	timer_hitstop--
	
	with(all)
	{
		image_speed = 0
	}
	
	if(timer_hitstop <= 0)
	{
		global.hitstop = false
		
		destrava_background(lista_background, bgs_hspeed,bgs_vspeed)
		with(all)
		{
			image_speed = 1
		}
	}
}