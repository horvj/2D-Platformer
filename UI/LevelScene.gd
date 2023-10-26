extends Control


func _on_battlefield_button_down():
	get_tree().change_scene("res://Levels/battlefield.tscn")


func _on_plane_button_down():
	get_tree().change_scene("res://Levels/plane.tscn")
