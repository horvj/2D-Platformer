extends Control


func _on_battlefield_button_down():
	Global.level = "Battlefield"
	get_tree().change_scene_to_file("res://UI/timer.tscn")


func _on_plane_button_down():
	Global.level = "Plane"
	get_tree().change_scene_to_file("res://UI/timer.tscn")
