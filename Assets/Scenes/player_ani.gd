extends Node2D

@export var playerControler : PlayerControler
@export var ani : AnimationPlayer
@export var sprite : Sprite2D

func _process(_delta: float) -> void:
	if  playerControler.direction == 1:
		sprite.flip_h = false
	elif  playerControler.direction == -1:
		sprite.flip_h = true
	
	if abs(playerControler.velocity.x) > 0.0:
		ani.play("move")
	else :
		ani.play("stand")
	
	if playerControler.velocity.y < 0.0 :
		ani.play("jump")
	elif playerControler.velocity.y > 0.0:
		ani.play("fall")
		
