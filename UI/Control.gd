extends Control

func _on_swordsman_button_down():
	Global.player1Input = "Swordsman"
	get_tree().change_scene("res://UI/Player2Select.tscn")



func _on_archer_button_down():
	Global.player1Input = "Archer"
	get_tree().change_scene("res://UI/Player2Select.tscn")


func _on_wizard_button_down():
	Global.player1Input = "Wizard"
	get_tree().change_scene("res://UI/Player2Select.tscn")
