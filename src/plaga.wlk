class Plaga{
  var property poblacion
   method transmitenEnfermedades() = poblacion>=10
}

class Cucarachas inherits Plaga{
   var property pesoPromedio
   overrides method transmitenEnfermedades() = pesoPromedio >= 10 and super()
   method nivelDeDanio() = poblacion/2
}

class Pulgas inherits Plaga{
 overrides method transmitenEnfermedades() = super()
  method nivelDeDanio() = poblacion*2
}

class Garrapatas inherits Pulga{
}     

class Mosquitos inherits Plaga{
   overrides method transmitenEnfermedades() = super()+ and poblacion % 3 == 0
    method nivelDeDanio() = poblacion 
}
