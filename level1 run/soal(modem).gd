extends Label
var modemIP = "192.168.160.205/24"
var soal

func _ready():
	soal = $"/root/Node2D/modem/IP/SOAL"
	soal.text = modemIP
	pass
