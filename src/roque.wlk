object roque {
	var property posicion = game.at(1,9)
	var property comidaActual = null
	
	method imagen() = "jugador.png"
	method levantar(comida){
		if (comidaActual != null){
			game.addVisual(comidaActual)
		}
		comidaActual = comida
		game.removeVisual(comida)
		
	}
	
}
//game.addVisual(comida.posicion.up(1))