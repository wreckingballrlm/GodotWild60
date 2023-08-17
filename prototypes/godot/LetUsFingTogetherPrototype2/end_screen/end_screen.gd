extends CenterContainer


@export var scroll_speed: float = 2.0

@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("Player")
@onready var animation_player: AnimationPlayer = %AnimationPlayer
@onready var victory_label: Label = %VictoryLabel
@onready var mech_head: Sprite2D = %MechHead
@onready var mech_body: Sprite2D = %MechBody



func _process(delta: float) -> void:
	player.global_position.y -= scroll_speed


func _on_win_area_area_entered(area: Area2D) -> void:
	animation_player.play("death")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	mech_head.hide()
	mech_body.hide()
	victory_label.show()
