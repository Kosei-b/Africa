//
//  AnimalDetailView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: Properties
    
    var animal: Animal
    
    //MARK: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                
                //Animal Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Animal Name
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HeadLine
                Text(animal.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .font(.headline)
                
                //Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Fact
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    InsetDescriptionView(animal: animal)
                }
                .padding(.horizontal)
                
                //Map
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                //Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }//: Vstack
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
            
        }//: NavigationView
    }
}

//MARK: Preview
struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalDetailView(animal: animals[3])
    }
}
