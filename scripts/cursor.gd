extends Sprite2D

# Kører en gang når scenen starter
func _ready() -> void:
	# Skjuler den normale musemarkør fra computeren
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN

# Kører hvert frame
func _process(delta: float) -> void:

	# Flytter spriteen blødt hen mod musens position
	# lerp gør bevægelsen glidende i stedet for øjeblikkelig
	global_position = lerp(global_position,get_global_mouse_position(),40 * delta)

	# Hvis venstre museknap holdes nede så rotere cursoren -12.5 grader ellers rotere dem tilbage til 0 grader
	var desired_rotation: float = -12.5 if Input.is_action_pressed("click") else 0.0

	# Gør rotationen glidende
	rotation_degrees = lerp(rotation_degrees,desired_rotation,16.5 * delta)

	# Hvis museknappen holdes nede gøres cursoren lidt mindre ellers er den normal størrelse
	var desired_scale: Vector2 = Vector2(0.35, 0.35) if Input.is_action_pressed("click") else Vector2(0.4, 0.4)

	# Ændrer størrelsen blødt
	scale = lerp(scale, desired_scale, 16.5 * delta)
