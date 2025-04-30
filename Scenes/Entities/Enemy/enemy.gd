## TODO:Give the Enemy collision
##		Make the enemy move towards the player
##		Set up animations when available
##		Set up world collisions when available

## INFO: 	video tutorials	https://www.youtube.com/watch?v=tjFQlMk4rS8
##							https://youtu.be/Luf2Kr5s3BM?t=724
##			text tutorials	https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html
##							https://docs.godotengine.org/en/stable/tutorials/physics/using_character_body_2d.html

extends CharacterBody2D

var speed = 40
var player_chase = false 
var player = null

func _physics_process(delta):
	if player_chase:
		position += (player.position - position)/speed
		
		$AnimatedSprite2D.play("walk")
		
		if(player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimationSprite2D.play("idle")
		
func _on_detection_area_body_entered(body: Node2D) -> void:
	player = body
	player_chase = true
	

func _on_detection_area_body_exited(body: Node2D) -> void:
	player = null
	player_chase = false
	
