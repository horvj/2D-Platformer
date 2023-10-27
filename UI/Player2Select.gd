extends Control

func _on_swordsman_button_down():
	Global.player2Input = "Swordsman"
	get_tree().change_scene_to_file("res://UI/LevelScene.tscn")


func _on_archer_button_down():
	Global.player2Input = "Archer"
	get_tree().change_scene_to_file("res://UI/LevelScene.tscn")


func _on_wizard_button_down():
	Global.player2Input = "Wizard"
	get_tree().change_scene_to_file("res://UI/LevelScene.tscn")

