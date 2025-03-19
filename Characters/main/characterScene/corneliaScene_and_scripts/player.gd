extends CharacterBody2D

func _physics_process(_delta):
	move_and_slide()
	%Cornelia.play_idle_animation()
	#
#@onready var cornelia = load("res://Characters/main/characterScene/corneliaScene_and_scripts/cornelia.tscn").instantiate()  # Instance cornelia.tscn
#var head = null  # To store the reference to the head node
#
#func _ready():
	#
	## Try to access the head node from cornelia
	#head = cornelia.get_node("head")
	#head.self_modulate = Color(GlobalColorPickerButton.head_changer)
