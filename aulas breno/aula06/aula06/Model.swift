//
//  Model.swift
//  aula06
//
//  Created by Student06 on 19/10/23.
//

import Foundation

struct API: Decodable {
    let data: [Vava]
}

struct Vava: Decodable, Hashable {
    // let id: UUID
    let displayName: String?
    let description: String?
    let displayIcon: String?
    let displayIconSmall: String?
}
