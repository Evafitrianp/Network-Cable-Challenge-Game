extends Node2D


func _ready():
	pass


func _on_Timer_timeout():
	$TextureProgress.value +=20
	if $TextureProgress.value >=100:
		GantiScene.gantiScene("res://mainmenu/Mainmenu.tscn")
