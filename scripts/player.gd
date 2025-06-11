extends Node2D

var speed := 200

func _ready():
    print("Ready to play!")

func _process(delta):
    var direction = Vector2.ZERO
    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1
    if Input.is_action_pressed("ui_down"):
        direction.y += 1
    if Input.is_action_pressed("ui_up"):
        direction.y -= 1
    if direction != Vector2.ZERO:
        position += direction.normalized() * speed * delta
