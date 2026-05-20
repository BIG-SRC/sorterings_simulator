extends Node2D

# Variablen der holder styr på spillerens point
var score = 0
# Tjekker om spilleren trækker et objekt
var is_dragging = false

# Tilføjer 1 point ved korrekt sortering og printer scoren
func _add_point():
	score += 1
	print(score)

# Fjerner 1 point ved forkert sortering og printer scoren
func _wrong():
	score -= 1
	print(score)

# Kører når timeren er slut
func _on_timer_timeout() -> void:
	# Skifter til slutscenen
	get_tree().change_scene_to_file("res://scenes/end_scene.tscn")
