class hogar{
  var nivelDeMugre
  var confort
  
  method esBueno() = nivelDeMugre == confort/2
}


class huerta{
  var capacidadDeProduccion
  var property nivel
  
  method esBueno() = capacidadDeProduccion > nivel
}

class mascota{
  var nivelDeSalud
  
   method esBueno() = nivelDeSalud > 250
}

class barrio{
  const property elementos = []
  
  method elementosBuenos() = elementos.(e => e.esBueno())
  method elementosMalos() = elementos.(e => e.!esBueno())
  
  method esCopado() = self.elementosBuenos() > self.elementosMalos()
}
