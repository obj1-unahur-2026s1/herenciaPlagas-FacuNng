import elementos.*

class Plagas{
    var poblacion
    method condicionAdicional()
    method transmiteEnfermedades(){
        return poblacion >= 10
        && self.condicionAdicional()
    }
    method nivelDeDanio
    method atacar(unElemento){
        unElemento.recibirAtaqueDe(self)
        poblacion = poblacion * 1.1
    }
}

class Cucarachas inherits Plagas {
    var pesoPromedio
    override method nivelDeDanio(){
        return poblacion * 0.5
    }
    override method condicionAdicional(){
        return pesoPromedio >= 10
    }
    override method atacar(unElemento){
        super(unElemento)
        pesoPromedio = pesoPromedio + 2
    }
}

class Pulgas inherits Plagas {
    override method nivelDeDanio(){
        return poblacion * 2
    }
    override method condicionAdicional() = true
}

class Garrapatas inherits Pulgas {
    override method atacar(unElemento){
        unElemento.recibirAtaqueDe(self)
        poblacion = poblacion * 1.2
    }
}

class Mosquitos inherits Plagas {
    override method nivelDeDanio(){
        return poblacion
    }
    override method condicionAdicional() {
        return poblacion % 3 == 0
    } 
}