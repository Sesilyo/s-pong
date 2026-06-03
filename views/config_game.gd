extends Node2D

# button functions
func _on_back_title_screen_btn_pressed() -> void:
	var error = get_tree().change_scene_to_file(ScenePaths.MAIN_SCENE)
	
	if error != OK:
		print("An error occured: {error}")


func _on_one_player_button_pressed() -> void:
	pass


func _on_two_player_button_pressed() -> void:
	var error = get_tree().change_scene_to_file(ScenePaths.TWO_PLAYER_GAME)
	
	if error != OK:
		print("Something went wrong: {error}")
