object electrodomestico {
	method esComestible() = false
}

object mueble {
	method esComestible() = false
}

object comida {
	method esComestible() = true
}

object heladera {
	method precio() = 20000
	
	method categoria() = electrodomestico
	
	method esDeMalaEpoca() = self.categoria().esComestible()
}

object cama {
	method precio() = 8000
	
	method categoria() = mueble
	
	method esDeMalaEpoca() = self.categoria().esComestible()
}

object tiraDeAsado {
	method precio() = 350
	
	method categoria() = comida
	
	method esDeMalaEpoca() = self.categoria().esComestible()
}

object paqueteDeFideos {
	method precio() = 50
	
	method categoria() = comida
	
	method esDeMalaEpoca() = self.categoria().esComestible()
}

object plancha {
	method precio() = 1200
	
	method categoria() = electrodomestico
	
	method esDeMalaEpoca() = self.categoria().esComestible()
}