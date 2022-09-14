//
//  MapOverRayView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI
import MapKit

struct MapOverRayView: View {
    // MARK: - PROPERTIES
    let Latitude: CLLocationDegrees
    let Longitude: CLLocationDegrees
   
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            
            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Text("Latitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(Latitude)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                
                Divider()
                
                HStack {
                    Text("Longitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(Longitude)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
        } //: HSTACK
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(
            Color.black
                .cornerRadius(8)
                .opacity(0.6)
        )
    }
}
