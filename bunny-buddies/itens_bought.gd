class_name ItensBought extends Control
@onready var book : TextureRect = $Book
func _ready() -> void:
	# This ensures the pivot is in the center so it scales outward
	# We do it once here, but we also check it when hovering
	update_pivot()

func update_pivot() -> void:
	# Centers the pivot point based on current UI size
	book.pivot_offset = size / 2

func _on_book_mouse_entered() -> void:
	update_pivot() # Recalculate just in case the window resized
	scale = Vector2(1.1, 1.1)
	pass # Replace with function body.

func _on_book_mouse_exited() -> void:
	scale = Vector2(1.0, 1.0)
	pass # Replace with function body.
