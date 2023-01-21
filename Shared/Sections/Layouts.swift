//
//  Layouts.swift
//  learning-swift (iOS)
//
//  Created by Harry on 31/07/2022.
//

import SwiftUI

struct Layouts: View {
    var body: some View {
        VStack {
            HStack() {
                Text("Layouts")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            ScrollView {
                HStack {
                    Text("Text in VStack")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .background(.gray)
            
                HStack {
                    Text("A HStack with a specific height")
                        .foregroundColor(.white)
                    Spacer()
                }
                .frame(height: 100)
                .padding()
                .background(.gray)
                
                HStack {
                    HStack {
                        Text("Box 1")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .frame(height: 100)
                    .padding()
                    .background(.gray)
                    
                    HStack {
                        Text("Box 2")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .frame(height: 100)
                    .padding()
                    .background(.gray)
                    
                    HStack {
                        Text("Box 3")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .frame(height: 100)
                    .padding()
                    .background(.gray)
                }
                
                VStack(alignment: .leading) {
                    Text("Some Content")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Divider()
                    
                    Text("Don’t worry if your hexagon looks a little unusual; that’s because you’re ignoring the curved part of each segment at the shape’s corners. You’ll account for that next.")
                        .font(.body)
                }
                .padding(.top, 20)
                
                HStack {
                    Text("A HStack with border and opacity")
                        .foregroundColor(.white)
                    Spacer()
                }
                .frame(height: 100)
                .padding()
                .background(.gray)
                .border(.black, width: 2.5)
                .opacity(0.5)            }
        }
        .padding(.horizontal, 10)
    }
}

struct Layouts_Previews: PreviewProvider {
    static var previews: some View {
        Layouts()
    }
}
