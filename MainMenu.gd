extends Control

func _ready():
	# --- Stretch the background full-screen ---
	var bg = $Background as TextureRect
	bg.anchor_left   = 0.0
	bg.anchor_top    = 0.0
	bg.anchor_right  = 1.0
	bg.anchor_bottom = 1.0
	bg.offset_left   = 0
	bg.offset_top    = 0
	bg.offset_right  = 0
	bg.offset_bottom = 0

	# --- Center the VBox between 25%–75% horiz, 20%–80% vert ---
	var vbox = $VBox as VBoxContainer
	vbox.anchor_left   = 0.25
	vbox.anchor_top    = 0.20
	vbox.anchor_right  = 0.75
	vbox.anchor_bottom = 0.80
	vbox.offset_left   = 0
	vbox.offset_top    = 0
	vbox.offset_right  = 0
	vbox.offset_bottom = 0

	# --- Hook up the buttons ---
	$VBox/StartButton.pressed.connect(_on_Start_pressed)
	$VBox/OptionsButton.pressed.connect(_on_Options_pressed)
	$VBox/QuitButton.pressed.connect(_on_Quit_pressed)

func _on_Start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_Options_pressed():
	#get_tree().change_scene("res://scenes/Options.tscn")
	pass

func _on_Quit_pressed():
	get_tree().quit()
