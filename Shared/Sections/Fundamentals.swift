//
//  Fundamentals.swift
//  learning-swift (iOS)
//
//  Created by Harry on 14/10/2022.
//

import SwiftUI

struct Fundamentals: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .fontWeight(.medium)
            .redText()
            // Using the modifier
    }
}

// This is a modifier can be used to specify multiple styles for views
struct RedText : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.red)
            .padding(20)
            .background(.yellow)
            .cornerRadius(50)
            
    }
}

// Addding the modifier as an extension to View
extension View {
    func redText() -> some View {
        modifier(RedText())
    }
}

struct Fundamentals_Previews: PreviewProvider {
    static var previews: some View {
        Fundamentals()
    }
}
