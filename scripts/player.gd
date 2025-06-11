extends CharacterBody2D

@export var speed: float = 200.0 # Movement speed in pixels per second

# Called every physics frame. Handles player movement.
func _physics_process(delta):
    var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    if direction != Vector2.ZERO:
        velocity = direction * speed
    else:
        velocity = Vector2.ZERO
    move_and_slide()
