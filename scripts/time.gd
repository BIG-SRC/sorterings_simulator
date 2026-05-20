extends Label

# Finder Timer-noden i scenen
@onready var timer = $"../../Timer"

# Kører hvert frame
func _process(_delta):
	# Gemmer hvor mange sekunder der er tilbage på timeren
	var time = int(timer.time_left)
	# Udregner minutter ud fra antal sekunder
	var minutes = time / 60
	# Finder resterende sekunder efter minutter er fjernet
	var seconds = time % 60
	# Viser tiden som minutter:sekunder (fx 0:25)
	text = "Tid tilbage: " + str(minutes) +":" + str(seconds)
