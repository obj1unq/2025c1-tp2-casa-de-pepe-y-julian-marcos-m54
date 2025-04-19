import cosas.*
import cuentas.*

object casaDePepeYJulian {
  const cosasCompradas = []
  var dineroGastado = 0
  var property cuentaBancaria = cuentaCorriente
  
  method validarListaVacia(unaLista) {
    if (unaLista.isEmpty()) self.error("la lista no puede estar vacia")
  }
  
  method cosasCompradas() = cosasCompradas
  
  method dineroGastado() = dineroGastado
  
  method saldo() = self.cuentaBancaria().saldo()
  
  method comprar(cosa) {
    cuentaBancaria.extraer(cosa.precio())
    dineroGastado += cosa.precio()
    cosasCompradas.add(cosa)
  }
  
  method cantidadDeCosasCompradas() = cosasCompradas.size()
  
  method tieneAlgun(categoria) = cosasCompradas.any(
    { cosa => cosa.categoria() == categoria }
  )
  
  method ultimaCompra() {
    self.validarListaVacia(cosasCompradas)
    return cosasCompradas.last()
  }
  
  method vieneDeComprar(
    categoria
  ) = self.ultimaCompra().categoria() == categoria
  
  method esDerrochona() = self.dineroGastado() >= 9000
  
  method compraMasCara() {
    self.validarListaVacia(cosasCompradas)
    return cosasCompradas.max({ cosa => cosa.precio() })
  }
  
  method comprados(categoria) = cosasCompradas.filter(
    { cosa => cosa.categoria() == categoria }
  )
  
  method malaEpoca() = cosasCompradas.all({ cosa => cosa.esDeMalaEpoca() })
  
  method queFaltaComprar(lista) = lista.filter(
    { cosa => not cosasCompradas.contains(cosa) }
  )
  
  method cantidadComidaComprada() = cosasCompradas.count(
    { cosa => cosa.esDeMalaEpoca() }
  )
  
  method faltaComida() = self.cantidadComidaComprada() < 2
  
  method categoriasCompradas() = cosasCompradas.map(
    { cosa => cosa.categoria() }
  ).withoutDuplicates()
}