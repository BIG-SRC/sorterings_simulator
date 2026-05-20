extends Area2D

#Denne funktion køre når et area2D kommer ind i skraldespandens område
func _on_area_entered(area: Area2D) -> void:
#Tjekker om area tilhøre gruppen "madaffald"
	if area.is_in_group("madaffald"):
		#Hvis den gør så køre den funktionen "_add_point()" fra GameManager
		GameManager._add_point()
	else:
		##Hvis den ikke gør så køre den funktionen "_wrong()" fra GameManager
		GameManager._wrong()
	# Fjerner skraldet uanset om det var rigtigt eller forkert
	area.queue_free()
