//
//  InsetGalleryView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center,spacing: 10) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                        .cornerRadius(15)
                    
                }//: ForEach
            }//: Hstack
        }//: ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[4])
    }
}
