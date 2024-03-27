extends Node2D


func _ready():
	pass


func _on_start_pressed():
	GantiScene.gantiScene("res://level1 run/level 1.tscn")
	pass # Replace with function body.


func _on_about_pressed():
	GantiScene.gantiScene("res://about/about.tscn")
	pass # Replace with function body.
