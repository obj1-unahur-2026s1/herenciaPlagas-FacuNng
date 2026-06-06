import Plagas.*

class Hogar {
  var mugre
  const confort
  method esBueno() = mugre * 2 <= confort
  method recibirAtaqueDe(unaPlaga){
    mugre = mugre + unaPlaga.nivelDeDanio()
  }
}

class Huerta {
  var produccion
  method esBueno() = produccion > nivelDeCosecha.valor()
  method recibirAtaqueDe(unaPlaga) {
    produccion = produccion - 
      (unaPlaga.nivelDeDanio() * 0.1 
      + if (unaPlaga.transmiteEnfermedades()) 10 else 0)
  }
}

object nivelDeCosecha {
  var property valor = 10 
}

class Mascota {
  var salud
  method esBueno() = salud > 250
  method recibirAtaqueDe(unaPlaga) {
    if(unaPlaga.transmiteEnfermedades()) {
      salud = salud - unaPlaga.nivelDeDanio()
    }
  }
}

class Barrio{
  const property elementos = []
  method esCopado(){
    return self.cantElementosBuenos() > elementos.size() / 2
  }
  method cantElementosBuenos(){
    return elementos.count({e => e.esBueno()})
  }
}

