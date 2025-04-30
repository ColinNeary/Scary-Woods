extends CharacterBody2D
class_name Player

const SPEED := 300
var currentdir := "down"

func _physics_process(delta):
	velocity = Vector2.ZERO
	var moving := false

	if Input.is_action_pressed("ui_right"):
		currentdir = "right"
		velocity.x = SPEED
		moving = true
	elif Input.is_action_pressed("ui_left"):
		currentdir = "left"
		velocity.x = -SPEED
		moving = true
	elif Input.is_action_pressed("ui_down"):
		currentdir = "down"
		velocity.y = SPEED
		moving = true
	elif Input.is_action_pressed("ui_up"):
		currentdir = "up"
		velocity.y = -SPEED
		moving = true

	play_anim(moving)
	move_and_slide()  # in Godot 4 this uses the velocity you set above

func play_anim(moving: bool) -> void:
	var anim = $AnimatedSprite2D

	if currentdir == "right":
		anim.flip_h = false
		if moving:
			anim.play("right_walk")
		else:
			anim.play("right_idle")

	elif currentdir == "left":
		anim.flip_h = false
		if moving:
			anim.play("left_walk")
		else:
			anim.play("left_idle")

	elif currentdir == "down":
		anim.flip_h = false
		if moving:
			anim.play("front_walk")
		else:
			anim.play("front_idle")

	elif currentdir == "up":
		anim.flip_h = false
		if moving:
			anim.play("back_walk")
		else:
			anim.play("back_idle")

	else:
		anim.play("front_idle")  # fallback
