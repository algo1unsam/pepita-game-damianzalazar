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
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} 
		else {
			game.say(self, "Ya estoy en " + unaCiudad + " !") 
			}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {	
		// DUDA. COMO HAGO PARA VER EL CALCULO DISTANCE?	
		if (self.energia() < self.energiaParaVolar(posicion.distance(nuevaPosicion))){
			game.say(self, "Dame de comer primero !")
		}
		else{
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		}
	}
	
	method teEncontro(alguien){
		self.come(alguien.comidaActual)
		game.addVisual(alguien.comidaActual)
		alguien.comidaActual(null)
	}	
}
