//
//  HeadingView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
                
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo", headingText: "Photo Gallery")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
