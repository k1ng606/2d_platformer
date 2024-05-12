class_name LevelManager
extends Node2D


func _ready() -> void:
	SignalBus.connect("entered_killzone", entered_killzone_hander)
	
func entered_killzone_hander(_body: Node2D) -> void:
	call_deferred("reload_current_scene")
	
func reload_current_scene() -> void:
	get_tree().reload_current_scene()
