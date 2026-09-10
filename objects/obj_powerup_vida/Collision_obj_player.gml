instance_destroy()

other.ganha_vida()

var _part = instance_create_layer(x,y,layer,obj_explosao_tiro)
_part.image_angle = random_range(0,360)

audio_play_sound(snd_pickup,0,0)