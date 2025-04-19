object cuentaCorriente {
  var property saldo = 0
  
  method depositar(cantidadDinero) {
    self.validarMontoPositivo(cantidadDinero)
    saldo += cantidadDinero
  }
  
  method extraer(cantidadDinero) {
    self.validarMontoPositivo(cantidadDinero)
    self.validarMontoDeExtraccion(cantidadDinero)
    saldo -= cantidadDinero
  }
  
  method validarMontoPositivo(cantidadDinero) {
    if (cantidadDinero < 0) self.error(
        "el monto ingresado no puede ser negativo"
      )
  }
  
  method validarMontoDeExtraccion(cantidadDinero) {
    if (cantidadDinero > self.saldo()) self.error(
        "el monto a ingresar debe ser menor"
      )
  }
}

object cuentaConGastos {
  var property saldo = 0
  var property costo = 20
  
  method depositar(cantidadDinero) {
    self.validarExcesoDeposito(cantidadDinero)
    saldo += cantidadDinero - costo
  }
  
  method extraer(cantidadDinero) {
    saldo -= cantidadDinero
  }
  
  method validarExcesoDeposito(cantidadDinero) {
    if (cantidadDinero > 1000) self.error(
        "el monto a ingresar debe ser menor a 1000"
      )
  }
}