//
//  CoverImageView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    
    
    
    //MARK: Body
    var body: some View {
        TabView {
            
            ForEach(0 ..< 5){ item in
                Image("cover-lion")
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
