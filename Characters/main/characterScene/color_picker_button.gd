extends ColorPickerButton

#get color_picker button
@onready var head_color_picker_button = get_node("/root/Customize_Character_menu/ColorRect/Head_Color/HeadColorPickerButton")
@onready var nose_color_picker_button = get_node("/root/Customize_Character_menu/ColorRect/Nose_Color/NoseColorPickerButton")
@onready var body_color_picker_button = get_node("/root/Customize_Character_menu/ColorRect/Body_Color/BodyColorPickerButton")
@onready var arm_color_picker_button = get_node("/root/Customize_Character_menu/ColorRect/Arm_Color/ArmColorPickerButton")
@onready var leg_color_picker_button = get_node("/root/Customize_Character_menu/ColorRect/Leg_Color/LegColorPickerButton")
	
#set button color to variable ...this needs
@onready var head_changer = head_color_picker_button.color
@onready var nose_changer = nose_color_picker_button.color
@onready var body_changer = body_color_picker_button.color
@onready var arm_changer = arm_color_picker_button.color
@onready var leg_changer = leg_color_picker_button.color

#update color when changed
func _ready():
	head_color_picker_button.color_changed.connect(_on_head_color_changed)
	nose_color_picker_button.color_changed.connect(_on_nose_color_changed)
	body_color_picker_button.color_changed.connect(_on_body_color_changed)
	arm_color_picker_button.color_changed.connect(_on_arm_color_changed)
	leg_color_picker_button.color_changed.connect(_on_leg_color_changed)
#handle color change... when color changes, the head_changer value is updated and passed to the Cornelia head sprite	
func _on_body_color_changed(new_color: Color):
	body_changer = new_color

func _on_head_color_changed(color: Color):
	head_changer = color

func _on_arm_color_changed(color: Color):
	arm_changer = color

func _on_leg_color_changed(color: Color):
	leg_changer = color
	
func _on_nose_color_changed(color: Color):
	nose_changer = color
