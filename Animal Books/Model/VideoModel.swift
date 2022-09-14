//
//  VideoModel.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI


struct Video: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // thumbnail(Video)
    var thumbnail: String {
      "video-\(id)"
    }
}
