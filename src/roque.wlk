import pepita.*

object roque {

	var property posicion = game.at(1, 9)
	var property comidaActual = null

	method imagen() = "jugador.png"

	method levantar(comida) {
		if (comidaActual != null) {
			game.addVisual(comidaActual)
		}
		comidaActual = comida
		game.removeVisual(comida)
	}

	method tieneComida() {
		if (comidaActual != null) {
			pepita.come(comidaActual)
			game.addVisualIn(comidaActual, game.at(1.randomUpTo(9),1.randomUpTo(9)))
			comidaActual = null
		} else {
			game.say(pepita, "No tienes mas comida")
		}
	}

}

//game.addVisual(comida.posicion.up(1)) 