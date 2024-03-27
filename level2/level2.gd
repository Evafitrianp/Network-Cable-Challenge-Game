extends Node2D


var correctPC1Config = {
	"ip" : "192.168.232.20",
	"subnetmask": "255.255.255.0",
	"gateway": "192.168.232.17",
	"dns1": "8.8.8.8",
	"dns2": "8.8.4.4",
}
var correctPC2Config = {
	"ip": "192.168.232.21",
	"subnetmask": "255.255.255.0",
	"gateway": "192.168.232.17",
	"dns1": "8.8.8.8",
	"dns2": "8.8.4.4"
}
var correctPC3Config = {
	"ip": "192.168.232.22",
	"subnetmask": "255.255.255.0",
	"gateway": "192.168.232.17",
	"dns1": "8.8.8.8",
	"dns2": "8.8.4.4"
}
var correctEtherConfig = {
	"ip": "192.168.175.1/24",
	"gateway": "192.168.175.1"
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
var pc3IPInput
var pc3SubnetInput
var pc3GatewayInput
var pc3DNS1Input
var pc3DNS2Input
var etherIPInput
var etherGatewayInput
var submitButton
var scoreLabel
var animation_player: AnimationPlayer

func _ready():
	questionLabel = $QuestionLabel
	pc1IPInput = $pc1IPInput
	pc1SubnetInput = $pc1SubnetInput
	pc1GatewayInput = $pc1GatewayInput
	pc1DNS1Input = $pc1DNS1Input
	pc1DNS2Input = $pc1DNS2Input
	pc2IPInput = $pc2IPInput
	pc2SubnetInput = $pc2SubnetInput
	pc2GatewayInput = $pc2GatewayInput
	pc2DNS1Input = $pc2DNS1Input
	pc2DNS2Input = $pc2DNS2Input
	pc3IPInput = $pc3IPInput
	pc3SubnetInput = $pc3SubnetInput
	pc3GatewayInput = $pc3GatewayInput
	pc3DNS1Input = $pc3DNS1Input
	pc3DNS2Input = $pc3DNS2Input
	etherIPInput = $etherIPInput
	etherGatewayInput = $etherGatewayInput
	submitButton = $submitButton
	animation_player = $AnimationPlayer

	# Menampilkan petunjuk awal
	questionLabel.text = "KONFIGURASIKAN PC1, PC2, PC3 DAN MODEM BERDASARKAN PETUNJUK YANG DIBERIKAN"
	
	#menampilkan score
	scoreLabel = $scoreLabel
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
			
	if 	correctPC1Config.dns1 == pc1DNS1Input.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS1 PC1' SALAH. SILAHKAN COBA LAGI!!!"
			
	if 	correctPC1Config.dns2 == pc1DNS2Input.text:
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
			
	if 	correctPC2Config.dns1 == pc2DNS1Input.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS1 PC2' SALAH. SILAHKAN COBA LAGI!!!"
			
	if 	correctPC2Config.dns2 == pc2DNS2Input.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS2 PC2' SALAH. SILAHKAN COBA LAGI!!!"

# Memeriksa apakah konfigurasi PC3 benar
	if correctPC3Config.ip == pc3IPInput.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'IP PC3' SALAH. SILAHKAN COBA LAGI!!!"
			
	if correctPC3Config.subnetmask == pc3SubnetInput.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'SM PC3' SALAH. SILAHKAN COBA LAGI!!!"
			
	if correctPC3Config.gateway == pc3GatewayInput.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'GW PC3' SALAH. SILAHKAN COBA LAGI!!!"
			
	if 	correctPC3Config.dns1 == pc3DNS1Input.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS1 PC3' SALAH. SILAHKAN COBA LAGI!!!"
			
	if 	correctPC3Config.dns2 == pc3DNS2Input.text:
			playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'DNS2 PC3' SALAH. SILAHKAN COBA LAGI!!!"

	# Memeriksa apakah konfigurasi Ether benar
	if 	correctEtherConfig.ip == etherIPInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'IP MODEM' SALAH. SILAHKAN COBA LAGI!!!"
		
	if 	correctEtherConfig.gateway == etherGatewayInput.text:
		playerScore += 1
	else:
		questionLabel.text = "KONFIGURASI PADA 'GW MODEM' SALAH. SILAHKAN COBA LAGI!!!"
		
	if playerScore == 17:
		questionLabel.text = "Semua Konfigurasi Sudah Benar! Selamat Semua Perangkat Sudah Terhubung :))"
		
	# Setelah menghitung skor pemain
	scoreLabel.text = "Skor: " + str(playerScore)
	


func _on_TouchScreenButton_pressed():
	GantiScene.gantiScene("res://mainmenu/Mainmenu.tscn")
	pass # Replace with function body.
