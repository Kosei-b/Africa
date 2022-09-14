//
//  VideoListView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(videos) { item in
                    NavigationLink (destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)){
                        VideoListitemView(video: item)
                            .padding(.vertical,8)
                    }
                }//: ForEach
            }//:List
            .navigationBarTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }//: Button
                }
            }//: toolBarItem
        }//: NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
