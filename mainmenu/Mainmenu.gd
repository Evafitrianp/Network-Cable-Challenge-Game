extends Node2D


func _ready():
	pass


func _on_start_pressed():
	GantiScene.gantiScene("res://introo karakter/introo karakter/Node2D.tscn")
	pass # Replace with function body.


func _on_about_pressed():
	GantiScene.gantiScene("res://about/about.tscn")
	pass # Replace with function body.


func _on_Quit_button_down():
	get_tree().quit()
