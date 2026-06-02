extends Node2D

# button functions
func _on_back_title_screen_btn_pressed() -> void:
	var error = get_tree().change_scene_to_file(ScenePaths.MAIN_SCENE)
	
	if error != OK:
		print("An error occured: {error}")
