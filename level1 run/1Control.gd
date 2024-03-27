extends Control

var correctAnswer = "jawaban yang benar"
var currentScore = 0

func _ready():
	var input_field = LineEdit.new()
	input_field.rect_min_size = Vector2(200, 30)
	add_child(input_field)

	var submit_button = Button.new()
	submit_button.text = "Submit"
	submit_button.rect_min_size = Vector2(100, 30)
	submit_button.connect("pressed", self, "_on_submit_pressed")
	add_child(submit_button)

	var answer_label = Label.new()
	answer_label.rect_min_size = Vector2(200, 30)
	add_child(answer_label)

func _on_submit_pressed():
	var input_field = get_node("LineEdit")
	var answer_label = get_node("Label")

	var userAnswer = input_field.text.strip_edges()
	if userAnswer == correctAnswer:
		currentScore += 1
		answer_label.text = "Jawaban Benar!"
	else:
		answer_label.text = "Jawaban Salah!"

	input_field.text = ""
	update_score_label()

func update_score_label():
	var score_label = get_node("ScoreLabel")
	score_label.text = "Skor: " + str(currentScore)
