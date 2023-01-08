extends CharacterBody2D

var speed = 50

func _ready():
	rotation = randf_range(0, TAU)
	velocity = transform.x * speed
	

func _physics_process(delta):
#	move_and_slide()
#	var collision = get_last_slide_collision()
#	if collision:
#		print("bouncing ", collision.get_collider().name, collision.get_normal())
#		velocity = velocity.bounce(collision.get_normal())
#	rotation = velocity.angle()
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		rotation = velocity.angle()
