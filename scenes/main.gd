extends Control

func item_data(name: String, why: String) -> Array[String]:
	return [name, why]
var main_list: Array = [
	item_data("Sample", "To demonstrate"),
	item_data("Make this app", "It's useful")
]

@onready var vbox_container = $VBoxContainer
var item_list_scene = preload("res://scenes/list_item.tscn")

func construct_mainlist() -> void:
	var l: int = main_list.size()
	for i in range(l):
		var instance = item_list_scene.instantiate()
		var item = main_list[i]
		instance.name = item[0]
		instance.why = item[1]
		instance.idx = i
		
		vbox_container.add_child(instance)
		
func _ready() -> void:
	construct_mainlist()
