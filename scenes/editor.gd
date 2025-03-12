extends Control

@export var main_node: NodePath
@export var vbox_container: NodePath

func open(for_idx: int) -> void:
	get_node(vbox_container).hide()
	show()
	
	$NameTextEdit.text = get_node(main_node).main_list[for_idx][0]
	$WhyTextEdit.text = get_node(main_node).main_list[for_idx][1]
	
func close() -> void:
	
	hide()
	get_node(vbox_container).show()

func _on_exit_button_pressed() -> void:
	close()
