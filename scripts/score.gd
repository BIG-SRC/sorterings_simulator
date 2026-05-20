extends Label

# Kører hvert frame
func _process(_delta: float) -> void:
	# Viser den nuværende score fra GameManager på labelen
	self.text = "Score: " + str(GameManager.score)
