//
//  ContentView.swift
//  Shared
//
//  Created by Harry on 31/07/2022.
//

import SwiftUI

struct ContentView: View {
    var colors : [Color] = [.blue, .teal, .brown, .orange, .yellow, .indigo, .red]
    
    @State var searchString = ""
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    Layouts()
                } label: {
                    Text("Layouts")
                }
                
                NavigationLink {
                    Input_Fields()
                } label: {
                    Text("Input Fields")
                }
                
                NavigationLink {
                    Grids()
                } label: {
                    Text("Grids")
                }
            }
            .navigationTitle("Swift Tutorial")
            .navigationViewStyle(.stack)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
