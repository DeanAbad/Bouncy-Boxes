extends Spatial

func _physics_process(_delta):
	self.get_node("CameraOrigin").rotate_y(0.01)

func _on_Area_body_entered(body):
	if body is RigidBody:
		body.queue_free()
