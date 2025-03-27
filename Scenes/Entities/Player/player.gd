## TODO:Replace UI actions with custom gameplay actions such as WASD movement, Interact, etc.
##		Give the player collision
##		Set up animations when available
##		Set up world collisions when available
##		Create a Camer2D that follows the Player

## INFO: video tutorials	https://www.youtube.com/watch?v=1TU2X37wPes
##							https://youtu.be/Luf2Kr5s3BM?t=724
##		 text tutorials		https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html
##							https://docs.godotengine.org/en/stable/tutorials/physics/using_character_body_2d.html

extends CharacterBody2D
class_name Player


const SPEED = 300.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass # Replace with function body.

# Called every process frame (60/second by default). 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
