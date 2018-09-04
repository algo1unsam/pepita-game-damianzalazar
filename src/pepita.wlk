import ciudades.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = null 
	var property posicion = game.at(3,3)
	var property imagen = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
		self.cambiaImagen()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			// DUDA. COMO HAGO PARA VER EL CALCULO DISTANCE EN EJECUCIÓN?	
			if (self.energia() < self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))){
				game.say(self, "Dame de comer primero !")
			}
			else{
				ciudad = unaCiudad
				self.posicion(unaCiudad.posicion())
				energia -= self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))
				self.cambiaImagen()
			}
		}
		else {
			game.say(self, "Ya estoy en " + unaCiudad + " !") 
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	//method move(nuevaPosicion) {	}
	
	method teEncontro(alguien) { alguien.tieneComida() }
	
	method cambiaImagen(){
		if(energia < 10){
			self.imagen("pepona.png")
		}
		else{ 
			if(energia > 100){
				self.imagen("pepita2.png")
			}
			else{
				self.imagen("pepita.png")
			}	
		}
	}
}
