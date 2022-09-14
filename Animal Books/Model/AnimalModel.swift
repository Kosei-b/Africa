//
//  AnimalModel.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI


struct Animal : Codable , Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact:[String]
}
