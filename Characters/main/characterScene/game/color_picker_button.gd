extends ColorPickerButton

#get color_picker button
@onready var head_color_picker_button: ColorPickerButton = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Head_Color/HeadColorPickerButton")
@onready var nose_color_picker_button = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Nose_Color/NoseColorPickerButton")
@onready var eye_color_picker_button = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Eye_Color/EyeColorPickerButton")
@onready var body_color_picker_button = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Body_Color/BodyColorPickerButton")
@onready var arm_color_picker_button = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Arm_Color/ArmColorPickerButton")
@onready var leg_color_picker_button = get_node("/root/Game/Customize_Character_menu/Menu_Background_Color/control_fields/Leg_Color/LegColorPickerButton")
	##
##set button color to variable ...this needs
@onready var head_changer = head_color_picker_button.color
@onready var nose_changer = nose_color_picker_button.color
@onready var eye_changer = eye_color_picker_button.color
@onready var body_changer = body_color_picker_button.color
@onready var arm_changer = arm_color_picker_button.color
@onready var leg_changer = leg_color_picker_button.color

##update color when changed
# note that "connect" creates a signal. you will not need another signal connection under "Node"
func _ready():
	head_color_picker_button.color_changed.connect(_on_head_color_changed)
	nose_color_picker_button.color_changed.connect(_on_nose_color_changed)
	eye_color_picker_button.color_changed.connect(_on_eye_color_changed)
	body_color_picker_button.color_changed.connect(_on_body_color_changed)
	arm_color_picker_button.color_changed.connect(_on_arm_color_changed)
	leg_color_picker_button.color_changed.connect(_on_leg_color_changed)
##handle color change... when color changes, the head_changer value is updated and passed to the Cornelia head sprite	
func _on_body_color_changed(new_body_color: Color):
	body_changer = new_body_color
#
func _on_head_color_changed(new_head_color: Color):
	head_changer = new_head_color

func _on_arm_color_changed(new_arm_color: Color):
	arm_changer = new_arm_color

func _on_leg_color_changed(new_leg_color: Color):
	leg_changer = new_leg_color
	
func _on_nose_color_changed(new_nose_color: Color):
	nose_changer = new_nose_color
#
func _on_eye_color_changed(new_eye_color: Color):
	eye_changer = new_eye_color
