extends Sprite

func _ready():
	# Membuat node "Label" dan mengatur teks IP address
	var label = Label.new()
	label.text = "192.168.186.30/27"
	label.align = Label.ALIGN_CENTER
	label.modulate = Color(0, 0, 0)
	
	# Menyesuaikan posisi "Label" di dalam Sprite
	label.rect_min_size = Vector2(200, 500)  # Atur ukuran sesuai kebutuhan
	label.rect_position = Vector2(-100, -5)    # Atur posisi sesuai kebutuhan

	# Menjadikan node "Label" sebagai anak dari Sprite
	add_child(label)

