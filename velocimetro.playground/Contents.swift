//: Diego Yañez
//: Velocimentro Digital

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    
    init(velocidad : Velocidades) {
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        var mensaje : String = ""
        switch velocidad {
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            mensaje = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            mensaje = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad Media"
        }
        return (velocidad.rawValue, mensaje )
    }
}

var auto = Auto(velocidad: Velocidades.Apagado)

print("\(auto.velocidad.rawValue), \(auto.velocidad)")
for _ in 1...20 {
    var cambioDeVelocidad = auto.cambioDeVelocidad()
    print("\(cambioDeVelocidad.actual), \(cambioDeVelocidad.velocidadEnCadena)")
}