//
//  ObjectVM.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import Foundation

struct ObjectViewModel {
    func getObjectList() -> [Objeto] {
        let objetos: [Objeto] = [
            Objeto(id: 1, image: "bomba", name: "Bombas"),
            Objeto(id: 2, image: "flechas", name: "Flechas"),
            Objeto(id: 3, image: "mazo", name: "Mazo"),
            Objeto(id: 4, image: "boomerang", name: "Boomerang"),
            Objeto(id: 5, image: "resortera", name: "Resortera"),
            Objeto(id: 6, image: "espada", name: "Espada")
        ]
        
        return objetos
    }
}
