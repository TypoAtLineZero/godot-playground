extends RigidBody2D

@export var can_jump : bool

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept") and can_jump:
		$AnimationPlayer.play("Jump")

func _on_body_entered(body):
	if body.is_in_group("TileMapLayer"):
		$AnimationPlayer.play("Idle")
