object roque {
	var property posicion = game.at(1,9)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	method levantar(comida){
		comidaActual = comida
		game.removeVisual(comida)
		// FALTA poner a roque en la posicion de la comida
	}
	
}
