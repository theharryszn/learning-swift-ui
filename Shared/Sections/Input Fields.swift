//
//  Input Fields.swift
//  learning-swift (iOS)
//
//  Created by Harry on 31/07/2022.
//

import SwiftUI

struct Input_Fields: View {
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var toggleOn = false;
    @State var pickerSelection = "Manual"
    @State var date: Date = Date.now
    
    var body: some View {
        VStack {
            HStack() {
                Text("Input Fields")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
            }
        
            List {
                TextField("Username", text: $username)
                    .padding(10)
                
                HStack {
                    Text("Email")
                    Divider()
                    TextField("Email",text: $email)
                }
                .padding(10)
                
                HStack {
                    Image(systemName: "lock")
                    Divider()
                    TextField("Password",text: $password)
                }
                .padding(10)
                
                Toggle(isOn: $toggleOn) {
                    Text("Switch On")
                }
                
                Picker("Mode", selection: $pickerSelection) {
                    Text("Manual")
                    
                    Text("Auto")
                }
                .pickerStyle(.segmented)
                
                
            }
            .listStyle(.plain)
        }
        .padding(.horizontal, 10)
    }
}

struct Input_Fields_Previews: PreviewProvider {
    static var previews: some View {
        Input_Fields()
    }
}
