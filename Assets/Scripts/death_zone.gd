extends Area2D

var checkPointManager
var Player
func _ready() -> void:
	checkPointManager = get_parent().get_parent().get_node("checkPointManager")
	Player = get_parent().get_parent().get_node("Player")
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		killPlayer()

func killPlayer():
	Player.position = checkPointManager.PlayerLastLocation
