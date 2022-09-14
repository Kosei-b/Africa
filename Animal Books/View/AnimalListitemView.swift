//
//  AnimalListitemView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct AnimalListitemView: View {
    //MARK: Properties
    
    var animal: Animal
    
    //MARK: Body
    var body: some View {
        HStack(alignment: .center,spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack (alignment: .center, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: Vstack
        }//: Hstack
    }//: Body
}

struct AnimalListitemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListitemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
