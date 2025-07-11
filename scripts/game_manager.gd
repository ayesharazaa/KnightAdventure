extends Node

var score = 0
@onready var scorelabel = $Label
func add_point() -> void:
	score += 1
	print(score)
	scorelabel.text = "Score: " + str(score)
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
