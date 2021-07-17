extends RigidBody

func _ready() -> void:
	self.global_translate(
		Vector3(rand_range(-6, 6),
				rand_range(1, 6),
				rand_range(-6, 6))
		)
