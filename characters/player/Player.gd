extends RigidBody2D

export var FLAP_FORCE=-200

var started=false
onready var animator=$AnimationPlayer

func _physics_process(delta):
	 if Input.is_action_just_pressed('flap'):
		  if !started:
			  start() 
			  flap()
	 if rotation_degrees===MAX_ROTATION_DEGREES:
		angular_veloccity=0
		rotation_degrees=MAX_ROTATION_DEGREES
	 if linear_velocity.y>0:
		if rotation_degrees<=90:
			angular_velocity=3
		else:
			angular_velocity=0	
			
func start():
	if started: return
	started=true
	gravity_scale=5.0
	animator.play('flap')
	
func flap():
	linear_velocity.y=FLAP_FORCE
	angular_velocity=-8.0
		