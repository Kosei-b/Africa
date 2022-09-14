//
//  InsetDescriptionView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct InsetDescriptionView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        Text(animal.description)
            .multilineTextAlignment(.leading)
            .layoutPriority(1)
    }
}

struct InsetDescriptionView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        
        InsetDescriptionView(animal: animals[2])
    }
}
