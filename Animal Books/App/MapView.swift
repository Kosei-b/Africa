//
//  MapView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
      var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
      var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
      var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
      
      return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region,annotationItems: locations) { item in
            MapAnnotation(coordinate: item.location) {
              MapAnnotationView(location: item)
            }//: MapAnnotations
        }//: Map
        .overlay(
            MapOverRayView(Latitude: region.center.latitude, Longitude: region.center.longitude)
                .padding()
                , alignment: .top
            
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
