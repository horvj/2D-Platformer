extends Control


func _on_restart_button_down():
	get_tree().change_scene_to_file("res://UI/control.tscn")


func _on_quit_pressed():
	get_tree().quit()
