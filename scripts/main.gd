extends Node3D

@onready var player = $Player
@onready var pendrive = $Pendrive


@onready var pendrive_label = $UI/Label

func _ready():
	pendrive.connect("pendrive_collected", Callable(self, "_on_pendrive_collected"))

func show_pendrive_ui():
	pendrive_label.text = "Você pegou o pendrive!"
	pendrive_label.visible = true
	await get_tree().create_timer(2.0).timeout
	pendrive_label.visible = false


func _on_pendrive_collected(capturing_player):
	print("Pendrive capturado por: ", capturing_player.name)
	show_pendrive_ui()
