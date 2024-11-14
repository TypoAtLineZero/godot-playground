extends Node

@export var coin : PackedScene

func spawn_new_coin():
	var coin_instance : Area2D = coin.instantiate()
	add_child(coin_instance)
	coin_instance.position = Vector2(576, 248)
