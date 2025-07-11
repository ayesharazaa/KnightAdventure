extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var direction = 1

@onready var raycastr = $RayCastRight
@onready var raycastl = $RayCastLeft
@onready var raycastgroundr = $RayCastGroundRight
@onready var raycastgroundl = $RayCastGroundLeft
@onready var animated_enemy = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycastr.is_colliding():
		animated_enemy.flip_h = true
		direction = -1
	if raycastl.is_colliding(): 
		animated_enemy.flip_h = false
		direction = 1
	if !raycastgroundr.is_colliding():
		animated_enemy.flip_h = true
		direction = -1
	if !raycastgroundl.is_colliding():
		animated_enemy.flip_h = false
		direction = 1
	position.x += direction*60*delta
