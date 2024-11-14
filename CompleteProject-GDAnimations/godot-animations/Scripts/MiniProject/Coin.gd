extends Area2D

@export var coins : Array[Texture2D]
@export var colors : Array[Color]

var sprite_index : int

func _ready():
	sprite_index = randi() % coins.size()
	$Sprite2D.texture = coins[sprite_index]

func _on_body_entered(body):
	if body.is_in_group("Player"):
		$AnimationPlayer.play("CollidedWithPlayer")
		get_parent().get_node("CoinCollectedParticles").emit(colors[sprite_index])
