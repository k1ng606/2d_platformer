extends Area2D

func _ready() -> void:
	connect("body_entered", on_body_entered)
	
func on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		SignalBus.entered_killzone.emit(body)
