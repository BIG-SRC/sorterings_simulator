extends Button

# Kører når knappen bliver trykket på
func _pressed() -> void:
	# Skifter til spilscenen
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	# Nulstiller spillerens score til 0
	GameManager.score = 0
