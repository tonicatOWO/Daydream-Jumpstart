extends Node

var currectArea = 1
var levelPath = "res://Assets/Scenes/levels/"

var coinCell = 0

func next_level():
	currectArea += 1
	var fullpath = levelPath + "level" + str(currectArea) + ".tscn"
	get_tree().call_deferred("change_scene_to_file", fullpath)
	print("next level")
	set_up_area()

func set_up_area():
	resetCoinCells()

func addCoinCell():
	coinCell += 1
	print(coinCell)
	if coinCell >= 4:
		var portal = get_tree().get_first_node_in_group("areaExit") as AreaExit
		portal.openExit()

func resetCoinCells():
	coinCell = 0
