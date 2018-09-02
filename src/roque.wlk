object roque {
	var property posicion = game.at(1,9)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	method levantar(comida){
		if (comidaActual != null){
			game.addVisualIn(comidaActual, comidaActual.posicion())
		}
		comidaActual = comida
		game.removeVisual(comida)
		
	}
	
}
