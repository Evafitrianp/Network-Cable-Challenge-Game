extends Node2D


func _ready():
	pass


func _on_TouchScreenButton_pressed():
	GantiScene.gantiScene("res://mainmenu/Mainmenu.tscn")
	pass # Replace with function body.



func _on_TouchNEXT_pressed():
	GantiScene.gantiScene("res://level2/level2.tscn")
	pass # Replace with function body.
