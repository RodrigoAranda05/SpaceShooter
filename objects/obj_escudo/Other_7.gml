if(image_speed < 0)
{
	instance_destroy()
	audio_play_sound(snd_shield_hit,0,0)
}
else
{
	image_speed = 0
	image_index = image_number -1
}