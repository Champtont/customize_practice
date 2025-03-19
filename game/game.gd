extends Node2D

#pause logic
@onready var customize_menu = $"%Customize_Character_menu"

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS## Ensures this node always processes input

func _input(event):
	if event.is_action_pressed("ui_cancel"):  # Detects when "Esc" is pressed
		toggle_pause()
		
func toggle_pause():
	get_tree().paused = not get_tree().paused # toggle pause state
	customize_menu.visible = get_tree().paused #show/hide pause menu

func _on_resume_button_pressed():
	toggle_pause()
