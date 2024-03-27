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
var soal

var playerScore = 0  # Inisialisasi skor pemain

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
	scoreLabel = $ScoreLabel
	soal = $soal

	# Menampilkan petunjuk awal
	soal.text = "Konfigurasikan PC1, PC2, dan Ether1 berdasarkan petunjuk:\n\nIP Modem: " + modemIP + "\nIP Ether1: " + etherIP
	
	# Menampilkan skor awal
	updateScoreLabel()

# Fungsi yang dipanggil saat tombol "Submit" ditekan
func _on_SubmitButton_pressed():
	var errorMessage = ""
	var allConfigurationsCorrect = true  # Inisialisasi sebagai benar

	# Memeriksa apakah konfigurasi PC1 benar
	if correctPC1Config.ip == pc1IPInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC1 IP salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC1Config.subnetmask == pc1SubnetInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC1 Subnet Mask salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC1Config.gateway == pc1GatewayInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC1 Gateway salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC1Config.dns1 == pc1DNS1Input.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC1 DNS 1 salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC1Config.dns2 == pc1DNS2Input.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC1 DNS 2 salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	# Memeriksa apakah konfigurasi PC2 benar
	if correctPC2Config.ip == pc2IPInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC2 IP salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC2Config.subnetmask == pc2SubnetInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC2 Subnet Mask salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC2Config.gateway == pc2GatewayInput.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC2 Gateway salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC2Config.dns1 == pc2DNS1Input.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC2 DNS 1 salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctPC2Config.dns2 == pc2DNS2Input.text:
		playerScore += 3
	else:
		errorMessage += "Konfigurasi PC2 DNS 2 salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	# Memeriksa apakah konfigurasi Ether benar
	if correctEtherConfig.ip == etherIPInput.text:
		playerScore += 5
	else:
		errorMessage += "Konfigurasi Ether1 IP salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if correctEtherConfig.gateway == etherGatewayInput.text:
		playerScore += 5
	else:
		errorMessage += "Konfigurasi Ether1 Gateway salah. "
		playerScore -= 1
		allConfigurationsCorrect = false  # Ada kesalahan konfigurasi

	if allConfigurationsCorrect:
		questionLabel.text = "Semua Konfigurasi Sudah benar Selamat Semua Perangkat Sudah terhubung!"
	else:
		questionLabel.text = errorMessage

	updateScoreLabel()

func updateScoreLabel():
	scoreLabel.text = "Skor: " + str(playerScore)

