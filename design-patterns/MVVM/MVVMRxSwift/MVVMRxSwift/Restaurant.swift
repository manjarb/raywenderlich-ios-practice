//
//  Restaurant.swift
//  MVVMRxSwift
//
//  Created by Varis Darasirikul on 9/11/2021.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case Chorizon
    case Insuresys
    case Daisu
    case Stelaecor
    case Furnafix
    case Capscreen
    case Enersol
}
