# FILENAME: main.gd

extends Node2D


# button functions
func _on_play_btn_pressed() -> void:
	var error = get_tree().change_scene_to_file(ScenePaths.CONFIG_GAME_SCENE)
	
	if error != OK:
		print("An error occured while changing scenes: {error}")

func _on_quit_btn_pressed() -> void:
	get_tree().quit()
