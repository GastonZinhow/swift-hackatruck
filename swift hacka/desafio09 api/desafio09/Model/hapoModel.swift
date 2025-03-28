//
//  hapoModel.swift
//  desafio09
//
//  Created by Turma02-8 on 26/03/25.
//

import Foundation

struct HaPo: Codable, Identifiable {
    var id: String?
    var name: String?
    var alternateNames: [String]?
    var species: String?
    var gender: String?
    var house: String?
    var dateOfBirth: String?
    var yearOfBirth: Int?
    var wizard: Bool?
    var ancestry: String?
    var eyeColour: String?
    var hairColour: String?
    var wand: Wand?
    var patronus: String?
    var hogwartsStudent: Bool?
    var hogwartsStaff: Bool?
    var actor: String?
    var alternateActors: [String]?
    var alive: Bool?
    var image: String?
}

struct Wand: Codable {
    var wood: String?
    var core: String?
    var length: Double?
}
