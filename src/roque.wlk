import pepita.*

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
	method tieneComida() {
		if(comidaActual == null){
			game.say(pepita, "No tienes mas comida")
		}
		else{
			pepita.come(comidaActual)
			game.addVisual(comidaActual)
			comidaActual = null
		}
	}
	
}
//game.addVisual(comida.posicion.up(1))