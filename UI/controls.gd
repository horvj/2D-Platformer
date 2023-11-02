extends Control


func _on_menu_pressed():
	hide()
	get_node("/root/Level/Menu").show()
