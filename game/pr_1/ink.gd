extends RigidBody2D

var speed = 100
var vector = Vector2(1,0)

func _ready():
	apply_impulse(Vector2(),vector*speed)
	set_physics_process(true)

func _physics_process(delta):
	if linear_velocity.abs() < Vector2(10,10) and linear_velocity != Vector2(0,0):
		$Particles2D.emitting = false
		$Timer.start()
		set_physics_process(false)


func _on_Timer_timeout():
	queue_free()
