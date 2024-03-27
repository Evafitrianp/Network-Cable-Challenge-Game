extends Label
var ether1IP = "192.168.232.17/23"
var soal

func _ready():
	soal = $"/root/Node2D/Label/ipetherr2"
	soal.text = ether1IP
	pass
