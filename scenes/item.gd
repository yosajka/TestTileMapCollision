extends Area2D

var is_dragging := false

func _ready() -> void:
    body_entered.connect(_on_body_entered)

func _process(_delta: float) -> void:
    if is_dragging:
        global_position = get_global_mouse_position()

func _input(event: InputEvent) -> void:
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
        is_dragging = true
    elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and !event.pressed:
        is_dragging = false

func _on_body_entered(body: Node2D) -> void:
    print("collide with " + body.name)

    
