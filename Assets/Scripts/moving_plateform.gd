extends Path2D
class_name MovingPlatform

@export var pathTime = 1.0
@export var looping = false
@export var easeType : Tween.EaseType
@export var transitionType : Tween.TransitionType
@export var pathFollow2D : PathFollow2D

func _ready():
	move_tween()

func move_tween():
	var tween = get_tree().create_tween().set_loops()
	tween.tween_property(pathFollow2D, "progress_ratio", 1.0, pathTime).set_ease(easeType).set_trans(transitionType)
	if !looping:
		tween.tween_property(pathFollow2D, "progress_ratio", 0.0, pathTime).set_ease(easeType).set_trans(transitionType)
	else:
		tween.tween_property(pathFollow2D, "progress_ratio", 0.0, 0.0).set_ease(easeType).set_trans(transitionType)
