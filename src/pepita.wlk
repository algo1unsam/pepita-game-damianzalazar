import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = null 
	var property posicion = game.at(3,3)
	
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			// DUDA. COMO HAGO PARA VER EL CALCULO DISTANCE?	
			if (self.energia() < self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))){
				game.say(self, "Dame de comer primero !")
			}
			else{
				ciudad = unaCiudad
				self.posicion(unaCiudad.posicion())
				energia -= self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))
		}
		} 
		else {
			game.say(self, "Ya estoy en " + unaCiudad + " !") 
			}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	//method move(nuevaPosicion) {	}
	
	method teEncontro(alguien){
		self.come(alguien.comidaActual)
		game.addVisual(alguien.comidaActual)
		alguien.comidaActual(null)
	}
}
