extends CharacterBody2D

@onready var player = get_node("/root/Cornelia")

func _physics_process(delta):
	move_and_slide()
	%Cornelia.play_idle_animation()
