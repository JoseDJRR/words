//: Playground - noun: a place where people can play
import UIKit

//Comparacion ASCII
func comparar(_ a: String,_ b: String) -> Bool {
    if (UnicodeScalar(String(a.prefix(1)))!.value > UnicodeScalar(String(b.prefix(1)))!.value ) {
        return true
    }
    return false
}

func rotacion(_ p: [String]) -> Int{
    var cont = 0
    for i in stride(from:0, to: p.count-1, by:1) {
        if comparar(p[i].lowercased(), p[i+1].lowercased()) {
            cont = i + 1
            break
        }
    }
    return cont
}

var cambio =
    ["palabra","artificio","reiniciar",
    "popocatepetl","bicornio","integrales",
    "chancla","pistola"]

print(rotacion(cambio))
