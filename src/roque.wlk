object roque {
	var property posicion = game.at(1,9)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	method levantar(comida){
		if (comidaActual != null){
			//PONER EN EL TABLEROOOOOOOOO
			addVisual()
			comida.posicion.up(1)
		}
		comidaActual = comida
		game.removeVisual(comida)
		
	}
	
}
