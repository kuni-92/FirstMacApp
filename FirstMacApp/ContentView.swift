//
//  ContentView.swift
//  FirstMacApp
//  
//  Created by kunikuni03 on 2022/03/20
//  
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Text editor")
                    .padding()
                Spacer()
                Button("Save", action: {})
                    .padding()
            }
            TextEditor(text: $text)
        }
        .frame(width: 500, height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
