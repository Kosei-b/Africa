//
//  VideoListitemView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-10.
//

import SwiftUI

struct VideoListitemView: View {
    // MARK: - PROPERTIES
    var video: Video

    // MARK: - BODY
    var body: some View {
        HStack (spacing: 10){
            
            ZStack {
                //Image-thumbnail
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                //Play-Image
                Image(systemName: "play.circle")
                  .resizable()
                  .scaledToFit()
                  .frame(height: 32)
                  .shadow(radius: 4)
                
            }//: Zstack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                  .font(.title2)
                  .fontWeight(.heavy)
                  .foregroundColor(.accentColor)
                
                Text(video.headline)
                  .font(.footnote)
                  .multilineTextAlignment(.leading)
                  .lineLimit(2)
            }//: Vstack
        }//: Hsatck
    }
}

struct VideoListitemView_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListitemView(video: videos[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
