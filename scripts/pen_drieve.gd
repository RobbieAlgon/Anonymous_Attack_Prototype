extends Area3D

signal pendrive_collected(player)

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.is_in_group("players"):
		emit_signal("pendrive_collected", body)
		queue_free()
