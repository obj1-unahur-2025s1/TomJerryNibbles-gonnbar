object tom {

  var energia = 50
  var ultimoRatonComido = jerry
  var distanciaRecorrida = 0
  
  method comer(raton){
   energia = energia + raton.peso() + 12
   ultimoRatonComido = raton
  }

  method correr(distancia){
    energia = energia - distancia * 0.5 
    distanciaRecorrida = distanciaRecorrida + distancia
  }

  method velMax(){
    return 5 + energia / 10
  }

  method energia(){
    return energia
  }

  method puedeCazar(distancia){
    return energia >= distancia / 2
  }

  method cazar(raton,distancia){
    if (self.puedeCazar(distancia)){
      self.correr(distancia)
      self.comer(raton)
    }
  }
}

object jerry {

  var edad = 2

  method peso(){
    return edad * 20
  }

  method cumplirAnios(){
    edad += 1
  }

  method edad(){
    return edad
  }
}

object nibbles {
  method peso(){
    return 35
  }
}


// Inventar otro ratón

object jorgito{
//cambia peso a voluntad
  var peso = 30

  method peso(){
    return peso
  }

  method peso(nuevoPeso){
    peso = nuevoPeso
  }
}
