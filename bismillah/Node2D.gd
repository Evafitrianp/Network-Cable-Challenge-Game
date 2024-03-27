extends Node2D

# Inisialisasi variabel
var modemIP = "192.168.160.205/24"
var etherIP = "192.168.156.16/22"

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
	"ip": "192.168.156.16/22",
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
	pc1IPInput = $PC1_IP_Input
	pc1SubnetInput = $PC1_Subnet_Input
	pc1GatewayInput = $PC1_Gateway_Input
	pc1DNS1Input = $PC1_DNS1_Input
	pc1DNS2Input = $PC1_DNS2_Input
	pc2IPInput = $PC2_IP_Input
	pc2SubnetInput = $PC2_Subnet_Input
	pc2GatewayInput = $PC2_Gateway_Input
	pc2DNS1Input = $PC2_DNS1_Input
	pc2DNS2Input = $PC2_DNS2_Input
	etherIPInput = $Ether_IP_Input
	etherGatewayInput = $Ether_Gateway_Input
	submitButton = $SubmitButton

	# Menampilkan petunjuk awal
	questionLabel.text = "Konfigurasikan PC1, PC2, dan Ether1 berdasarkan petunjuk:\n\nIP Modem: " + modemIP + "\nIP Ether1: " + etherIP 
	
	#menampilkan score
	scoreLabel = $ScoreLabel
	scoreLabel.text = "Skor: 0"

# Fungsi yang dipanggil saat tombol "Submit" ditekan
func _on_SubmitButton_pressed():
	
	var playerScore = 0

	# Memeriksa apakah konfigurasi PC1 benar
	if correctPC1Config.ip == pc1IPInput.text:
			playerScore += 1
			
	if correctPC1Config.subnetmask == pc1SubnetInput.text:
			playerScore += 1
			
	if correctPC1Config.gateway == pc1GatewayInput.text:
			playerScore += 1
			
	if 	correctPC1Config.dns1 == pc1DNS1Input.text:
			playerScore += 1
			
	if 	correctPC1Config.dns2 == pc1DNS2Input.text:
			playerScore += 1

	# Memeriksa apakah konfigurasi PC2 benar
	if correctPC2Config.ip == pc2IPInput.text:
			playerScore += 1
			
	if correctPC2Config.subnetmask == pc2SubnetInput.text:
			playerScore += 1
			
	if correctPC2Config.gateway == pc2GatewayInput.text:
			playerScore += 1
			
	if 	correctPC2Config.dns1 == pc2DNS1Input.text:
			playerScore += 1
			
	if 	correctPC2Config.dns2 == pc2DNS2Input.text:
			playerScore += 1

	# Memeriksa apakah konfigurasi Ether benar
	if 	correctEtherConfig.ip == etherIPInput.text:
		playerScore += 1
		
	if 	correctEtherConfig.gateway == etherGatewayInput.text:
		playerScore += 1
		
	if playerScore == 12:
		questionLabel.text = "Konfigurasi benar!\n\nJawaban yang benar adalah:\n\n" + "IP PC1: " + correctPC1Config.ip + '\n' + "Subnetmask PC1: " + correctPC1Config.subnetmask + "\n" + "Gateway PC1: " + correctPC1Config.gateway + "\n" + "DNS1 PC1: " + correctPC1Config.dns1 + "\n" + "DNS2 PC1: " + correctPC1Config.dns2 + "\n" + "IP PC2: " + correctPC2Config.ip + "\n" + "Subnetmask PC2: " + correctPC2Config.subnetmask + "\n" + "Gateway PC2: " + correctPC2Config.gateway + "\n" + "DNS1 PC2: " + correctPC2Config.dns1 + "\n" + "DNS2 PC2: " + correctPC2Config.dns2 + "\n" + "IP Ether1: " + correctEtherConfig.ip + "\n" + "Gateway Ether1: " + correctEtherConfig.gateway
	else:
		questionLabel.text = "Konfigurasi salah. Silakan coba lagi."
		
	# Setelah menghitung skor pemain
	scoreLabel.text = "Skor: " + str(playerScore)
