//
//  ContentView.swift
//  Animal Books
//
//  Created by Kosei Ban on 2022-09-09.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    //MARK: Functions
    
    func gridSwich() {
        withAnimation(.easeIn) {
            gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
            gridColumn = gridLayout.count
            print("Grid Number: \(gridColumn)")
        }
        
        //: ToolBarIcon
        switch gridColumn {
        case 1: toolbarIcon = "square.grid.2x2"
        case 2: toolbarIcon = "square.grid.3x2"
        case 3: toolbarIcon = "rectangle.grid.1x2"
        default: toolbarIcon = "square.grid.2x2"
        }
    }
    
    //MARK: Body
    var body: some View {
        NavigationView {
            
            Group{
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: -22, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals){ animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListitemView(animal: animal)
                            }//: NavigationLink
                        }//: AnimalListView
                        CreditsView()
                          .modifier(CenterModifier())
                    }//:List
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical,showsIndicators: false){
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                          ForEach(animals) { animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                              AnimalGridItemView(animal: animal)
                            } //: LINK
                          } //: LOOP
                        } //: GRID
                        .padding(10)
                    }//: ScrollView
                }
            }//: Group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 10){
                        
                        //: ListButton
                        Button {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }

                        //: GridButton
                        Button {
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwich()
                        } label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                    }//: HStack
                }//: ToolBarItem
            }//: ToolBar
        }//: NavigationView
    }//: Body
}

//MARK: PreView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
