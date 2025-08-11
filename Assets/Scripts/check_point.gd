extends Area2D

var checkPointManager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	checkPointManager = get_parent().get_parent().get_node("checkPointManager")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		checkPointManager.PlayerLastLocation = $respawnPoint.global_position
