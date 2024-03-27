extends Node2D

# Inisialisasi variabel
var correctPC1Config = {
	"ip" : "192.168.156.17",
	"subnetmask": "255.255.255.128",
	"gateway": "192.168.156.1",
	"dns1": "8.8.8.8",
	"dns2": "8.8.4.4",
}
var correctPC2Config = {
	"ip": "192.168.156.145",
	"subnetmask": "255.255.255.128",
	"gateway": "192.168.156.1",
	"dns1": "8.8.8.8",
	"dns2": "8.8.4.4"
}
var correctEtherConfig = {
	"ip": "192.168.160.16/22",
	"gateway": "192.168.160.205"
}

var questionLabel
var pc1IPInput
var pc1SubnetInput
var pc1GatewayInput
var pc1DNS1Input
var pc1DNS2Input
var pc2IPInput
var pc2SubnetInput
var pc2GatewayInput
var pc2DNS1Input
var pc2DNS2Input
var etherIPInput
var etherGatewayInput
var submitButton
var scoreLabel

func _ready():
	questionLabel = $QuestionLabel
	pc1IPInput = $"pc 1/IP/PC1_IP_Input"
	pc1SubnetInput = $"pc 1/SM/PC1_Subnet_Input"
	pc1GatewayInput = $"pc 1/GW/PC1_Gateway_Input"
	pc1DNS1Input = $"pc 1/DNS1/PC1_DNS1_Input"
	pc1DNS2Input = $"pc 1/DNS2/PC1_DNS2_Input"
	pc2IPInput = $"pc 2/IP/PC2_IP_Input"
	pc2SubnetInput = $"pc 2/SM/PC2_Subnet_Input"
	pc2GatewayInput = $"pc 2/GW/PC2_Gateway_Input"
	pc2DNS1Input = $"pc 2/DNS1/PC2_DNS1_Input"
	pc2DNS2Input = $"pc 2/DNS2/PC2_DNS2_Input"
	etherIPInput = $"ether 1/IP/Ether_IP_Input"
	etherGatewayInput = $"ether 1/GW/Ether_Gateway_Input"
	submitButton = $SubmitButton
	scoreLabel = $ScoreLabel
	
	#Menampilkan petunjuk awal
	questionLabel.text = "KONFIGURASIKAN PC1, PC2, DAN ETHER 1 BERDASARKAN PETUNJUK YANG DIBERIKAN"
	
	# Menampilkan skor
	scoreLabel = $ScoreLabel
	scoreLabel.text = "Skor: 0"
	

# Fungsi yang dipanggil saat tombol "Submit" ditekan
func _on_SubmitButton_pressed():

	var playerScore = 0

	# Memeriksa apakah konfigurasi PC1 benar
	if correctPC1Config.ip == pc1IPInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'IP PC1' SALAH. SILAHKAN COBA LAGI!!!"

	if correctPC1Config.subnetmask == pc1SubnetInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'SM PC1' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC1Config.gateway == pc1GatewayInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'GW PC1' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC1Config.dns1 == pc1DNS1Input.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS1 PC1' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC1Config.dns2 == pc1DNS2Input.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS2 PC1' SALAH. SILAHKAN COBA LAGI!!!"

	# Memeriksa apakah konfigurasi PC2 benar
	if correctPC2Config.ip == pc2IPInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'IP PC2' SALAH. SILAHKAN COBA LAGI!!!"

	if correctPC2Config.subnetmask == pc2SubnetInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'SM PC2' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC2Config.gateway == pc2GatewayInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'GW PC2' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC2Config.dns1 == pc2DNS1Input.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS1 PC2' SALAH. SILAHKAN COBA LAGI!!!"
		
	if correctPC2Config.dns2 == pc2DNS2Input.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS2 PC2' SALAH. SILAHKAN COBA LAGI!!!"

	# Memeriksa apakah konfigurasi Ether benar
	if correctEtherConfig.ip == etherIPInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'IP ETHER 1' SALAH. SILAHKAN COBA LAGI!!!"

	if correctEtherConfig.gateway == etherGatewayInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'GW ETHER 1' SALAH. SILAHKAN COBA LAGI!!!"

	if playerScore == 12:
		questionLabel.text = "Semua Konfigurasi Sudah Benar! Selamat Semua Perangkat Sudah Terhubung :))"
		
	# Setelah menghitung skor pemain
	scoreLabel.text = "Skor: " + str(playerScore)
	
func _on_TouchNEXT_pressed():
	GantiScene.gantiScene("res://level2/level2.tscn")
	pass # Replace with function body.

func _on_TouchScreenButton_pressed():
	GantiScene.gantiScene("res://mainmenu/Mainmenu.tscn")
	pass

