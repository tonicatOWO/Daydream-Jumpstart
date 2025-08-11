extends Node

var Player
var PlayerLastLocation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Player = get_parent().get_node("Player")
	PlayerLastLocation = Player.global_position 
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
