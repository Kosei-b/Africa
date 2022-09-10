//
//  MainView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI

//MARK: MainView
struct MainView: View {
    var body: some View {
        TabView{
            
            //MARK: ContentView
            ContentView()
                .tabItem {
                   Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            //MARK: VideoListView
            VideoListView()
                .tabItem {
                   Image(systemName: "play.rectangle")
                    Text("Video")
                }
            
            //MARK: MapView
            MapView()
                .tabItem {
                   Image(systemName: "map")
                    Text("Map")
                }
            
            //MARK: GalleryView
            GalleryView()
                .tabItem {
                   Image(systemName: "photo")
                    Text("Gallery")
                }
        }//: TabView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
