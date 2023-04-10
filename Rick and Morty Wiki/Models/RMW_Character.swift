//
//  RMW_Character.swift
//  Rick and Morty Wiki
//
//  Created by Ashkan Navid on 10.04.23.
//

import Foundation

struct RMW_Character: Codable {
    let id: Int
    let name: String
    let status: RMW_CharacterStatus
    let species: String
    let type: String
    let gender: RMW_CharacterGender
    let origin: RMW_Origin
    let location: RMW_SingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
