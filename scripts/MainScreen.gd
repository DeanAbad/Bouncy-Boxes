extends Node2D

onready var crate : Resource = preload("res://scenes/Crate.tscn")
onready var strongCrate : Resource = preload("res://scenes/StrongCrate.tscn")

func _input(event):
	if event is InputEventMouseButton:
		for aNumberOfCrates in rand_range(1, 50):
			var thisType : int = randi() % 2
			if thisType == 0:
				# GEN_EDIT_STATE is DISABLED for HTML5 export compatibility
				self.get_node("Viewport/World").add_child(crate.instance(PackedScene.GEN_EDIT_STATE_DISABLED),true)
			else:
				self.get_node("Viewport/World").add_child(strongCrate.instance(PackedScene.GEN_EDIT_STATE_DISABLED),true)
