extends Area2D

# En variabel der tjekker om objektet kan trækkes med musen
var draggable = false
# En variabel der gemmer afstanden mellem mus og objekt når et træk startes
var offset: Vector2

# Kører hvert frame
func _process(_delta):
	# Tjekker om objektet kan trækkes
	if draggable:
		# Når museknappen trykkes ned første gang
		if Input.is_action_just_pressed("click"):
			# Gemmer forskellen mellem musens position og objektets position (offset)
			offset = get_global_mouse_position() - global_position
			# Fortæller GameManager at et objekt trækkes
			GameManager.is_dragging = true
			# Ændre collison layer når objektet flyttes så det ikke kollidere med skraldespande
			collision_layer = 2
		# Mens museknappen holdes nede
		if Input.is_action_pressed("click"):
			# Flytter objektet efter musen ud fra offset
			global_position = get_global_mouse_position() - offset
			# Ændre collison layer når objektet flyttes så det ikke kollidere med skraldespande
			collision_layer = 2
		# Når museknappen slippes
		elif Input.is_action_just_released("click"):
			# Fortæller GameManager at træk er stoppet
			GameManager.is_dragging = false
			# Sætter collison layer tilbage til en så skraldet kan koliidere med skraldespanden
			collision_layer = 1

# Kører når musen bevæger sig ind over objektet
func _on_mouse_entered() -> void:
	# Tjekker om et andet objekt trækkes og tillader kun hover effekkt hvis intet andet objekt trækkes
	if not GameManager.is_dragging:
		# Gør objektet trækbart
		draggable = true
		# Gør objektet lidt større for at vise at objektet kan trækkes (hover effekt)
		scale = Vector2(1.05,1.05)
# Kører når musen forlader objektet
func _on_mouse_exited() -> void:
	# Tjækker om intet objekt trækkes
	if not GameManager.is_dragging:
		# Stopper muligheden for at trække objektet
		draggable = false
		# Gendanner normal størrelse
		scale = Vector2(1,1)
