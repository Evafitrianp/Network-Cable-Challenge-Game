extends TextEdit

# Inisialisasi kata kunci yang harus dicocokkan
var kataKunci = "kata_kunci"

func _ready():
	# Menambahkan metode _on_text_entered untuk menangani teks masukan
	connect("text_entered", self, "_on_text_entered")

func _on_text_entered(new_text):
	# Memeriksa apakah teks masukan sesuai dengan kata kunci
	if new_text == kataKunci:
		# Jika sesuai, tampilkan teks pada "Label2"
		$root/Node2/level1/soal/Label2.text = new_text
	else:
		# Jika tidak sesuai, tampilkan pop up gagal
		var popUp = preload("res://Rectangle 6.png").instance()
		get_tree().get_root().add_child(popUp)

