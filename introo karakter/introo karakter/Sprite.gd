extends Node
var no_dialog = 1


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	load_dialog("Selamat datang, para ahli jaringan! Aku Chuyaa, penunjuk jalan dalam game ini. Bersiaplah untuk tantangan seru menuju keahlian jaringan sejati!")


func load_dialog(dialognya):
	$dialog.text = dialognya
	$Tween.interpolate_property(
		$dialog,"percent_visible", 0, 2, 4,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$Tween.start()


func _on_next_pressed():
	no_dialog +=1
	if no_dialog == 2:
		load_dialog("Level pertama, sambungkan dua komputer. Chuyaa akan pandu kalian tentukan IP, subnet mask, gateway, DNS1, DNS2, dan Ether1. Ikuti instruksi dengan cermat, kemenangan menunggu!")
	elif no_dialog == 3:
		load_dialog("Petualangan belum selesai! Di level kedua, tantangan tiga komputer menantimu. Hanya yang cerdas dan teliti akan mencapai puncak keahlian jaringan.")
	elif no_dialog == 4:
		load_dialog("Bersiaplah, para pemecah kode!mulai petualangan ini bersama Chuyaa. Jaringan komputer tidak akan pernah sama lagi setelah kalian selesaikan misi ini. Selamat bersenang-senang!")
		menampilkan_next2()
	elif no_dialog == 5:
		menyembunyikan_next2()

func menampilkan_next2():
	$"/root/Node2D/next2".visible = true

func menyembunyikan_next2():
	$"/root/Node2D/next2".visible = false
