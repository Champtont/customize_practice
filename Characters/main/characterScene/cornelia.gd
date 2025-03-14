extends Node2D

#prepare nodes
@onready var head: Sprite2D = get_node("head")
@onready var nose: Sprite2D = get_node("head/nose")
@onready var body: Sprite2D = get_node("body")
@onready var left_arm: Sprite2D = get_node("body/left_arm_marker/left_arm")
@onready var right_arm: Sprite2D = get_node("body/right_arm_marker/right_arm")
@onready var left_leg: Sprite2D = get_node("left_leg")
@onready var left_foot: Sprite2D = get_node("left_leg/left_foot")
@onready var right_leg: Sprite2D = get_node("right_leg")
@onready var right_foot: Sprite2D = get_node("right_leg/right_foot")

#play animation
func play_idle_animation():
	%Cornelias_animation_player.play("idle")

#Programatic Coloring
#The *changer values are passed here	
	head.self_modulate = Color(GlobalColorPickerButton.head_changer)
	nose.self_modulate = Color(GlobalColorPickerButton.nose_changer)
	body.self_modulate = Color(GlobalColorPickerButton.body_changer)
	left_arm.self_modulate = Color(GlobalColorPickerButton.arm_changer)
	right_arm.self_modulate = Color(GlobalColorPickerButton.arm_changer)
	left_leg.self_modulate = Color(GlobalColorPickerButton.leg_changer)
	left_foot.self_modulate = Color(GlobalColorPickerButton.leg_changer)
	right_leg.self_modulate = Color(GlobalColorPickerButton.leg_changer)
	right_foot.self_modulate = Color(GlobalColorPickerButton.leg_changer)
	
