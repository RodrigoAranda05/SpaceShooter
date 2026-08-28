enum tween_animation {
	back,
	flat,
	elastic,
	bounce,
	ease
}

function tween(_object, _variable_name, _value, _animation = tween_animation.back, _time = room_speed, _callback = -1){
	var _anim = _animation
	switch(_animation){
		case tween_animation.back:    _anim = "back"   break
		case tween_animation.flat:    _anim = "flat"   break
		case tween_animation.elastic: _anim = "bounce" break
		case tween_animation.bounce:  _anim = "bounce" break
		case tween_animation.ease:    _anim = "ease"   break
	}
	
	var _tween = instance_create_depth(x, y, depth, obj_tween, {
			object: _object,
			variable_name: _variable_name,
			value: _value,
			animation: _anim,
			time: _time,
			anim_curve: animcurve_get_channel(tween_curves, _anim),
			callback: _callback
		});
	
	return _tween;
}