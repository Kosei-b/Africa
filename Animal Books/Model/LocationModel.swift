//
//  LocationModel.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable,Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Location
    var location: CLLocationCoordinate2D {
      CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    
}
