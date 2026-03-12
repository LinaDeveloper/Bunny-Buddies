class_name MAIN extends Control

@onready var leave_pomo_confirm = $Pomodoro/Confirmation
@onready var room = $Room
@onready var pomodoro = $Pomodoro
@export var confirmed1 : bool = false


func ask_confirmation() -> bool:
	leave_pomo_confirm.popup_centered()
	if (confirmed1):
		return true
	else:
		return false

func _on_start_pressed() -> void:
	room.visible = false
	pomodoro.visible = true 
	# Or, if you want to toggle it on and off:
	# room.visible = !room.visible

func _on_ready() -> void:
	room.visible = true

func _on_stop_pressed() -> void:
	leave_pomo_confirm.popup_centered()
	
	# This pauses this function until the user clicks "OK"
	await leave_pomo_confirm.confirmed
	
	# These lines only run AFTER "OK" is clicked
	room.visible = true
	pomodoro.visible = false
