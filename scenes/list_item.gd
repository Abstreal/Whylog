extends VBoxContainer

var idx: int = -1
var why: String = ""

func _ready() -> void:
	$NameLabel.text = name
	$WhyLabel.text = why

func _on_button_pressed() -> void:
	get_parent().get_parent().get_node("Editor").open(idx)
