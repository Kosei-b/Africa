//
//  CoverImageView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }//: Image List
            
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
    }
}
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
