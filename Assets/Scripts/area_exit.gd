extends Area2D
class_name AreaExit

@export var sprite : Sprite2D
var Openis = false

func _ready() -> void:
	closingExit()

func closingExit():
	Openis = false
	sprite.region_rect.position.x = 0

func openExit():
	Openis = true
	sprite.region_rect.position.x = 22
	
func _on_body_entered(body: Node2D) -> void:
	if Openis && body.is_in_group("Player"):
		GameManager.next_level()
