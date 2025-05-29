if !keyboard_check(vk_enter){
	if keyboard_check_pressed(vk_anykey){
		
		if keyboard_check(vk_backspace){
			prompt_maneiro = string_copy(prompt_maneiro, 1, string_length(prompt_maneiro)-1)
		}else{
			prompt_maneiro+=keyboard_lastchar
		}
	}
}else{
	conversa+="usuario: " + prompt_maneiro
	APIr(conversa)
	prompt_maneiro = ""
}