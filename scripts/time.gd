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
	# "%02d:%02d" laver tekst i formatet mm:ss
	# % indsætter værdierne i rækkefølge fra [minutes, seconds]
	# %d betyder at det er et helt tal
	# 2 betyder at tallet mindst skal være 2 cifre
	# 0 betyder at der sættes 0 foran hvis tallet kun er et ciffer
	# Eksempel: 0 bliver til "00", 2 bliver til "02", 12 forbliver "12"
	text = "Tid tilbage: %02d:%02d" % [minutes, seconds]
