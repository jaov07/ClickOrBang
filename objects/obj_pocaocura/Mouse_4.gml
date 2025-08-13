with(obj_jolie){
	if(vidaJolie < 5){
		vidaJolie += 1
	}
	else{
		show_debug_message("perdeu uma poção atoa!")	
	}
		
		
}
show_debug_message(string(obj_jolie.vidaJolie))