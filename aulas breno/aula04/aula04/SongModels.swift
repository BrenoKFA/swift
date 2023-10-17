//
//  SongModels.swift
//  aula04
//
//  Created by Student06 on 17/10/23.
//

import Foundation

struct Suggestion: Identifiable {
    var id: Int
    var albumName: String
    var albumCover: String
}

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var cover: String
}
