//
//  Object.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import Foundation
struct Objeto: Identifiable{
    
    let id: Int
    let uuid: UUID = UUID() // valor ID único-universal
    let image: String
    let name: String
}
