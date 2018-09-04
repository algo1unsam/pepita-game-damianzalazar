object manzana {
	const property imagen = "manzana.png"
	method posicion() = game.at(5,1)
	method energia() = 80
	method teEncontro(alguien) { alguien.levantar(self) }
}

object alpiste {
	const property imagen = "alpiste.png"
	method posicion() = game.at(5,5)
	method energia() = 5
	method teEncontro(alguien) { alguien.levantar(self) }
}
