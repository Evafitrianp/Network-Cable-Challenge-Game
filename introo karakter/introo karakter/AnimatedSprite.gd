extends AnimatedSprite

onready var anim = $"/root/Node2D/AnimatedSprite"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("bicara")

func _on_next2_pressed():
	GantiScene.gantiScene("res://level1 run/level 1.tscn")
	pass
