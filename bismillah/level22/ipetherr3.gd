extends Label
var ether2IP = "192.168.175.1/24"
var soal

func _ready():
	soal = $"/root/Node2D/Label2/ipetherr3"
	soal.text = ether2IP
	pass
