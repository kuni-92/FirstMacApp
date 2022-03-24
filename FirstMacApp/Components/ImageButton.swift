//
//  ConvertButton.swift
//  FirstMacApp
//  
//  Created by kunikuni03 on 2022/03/23
//  
//

import SwiftUI

struct ImageButton: View {
    var systemName: String
    var text: String

    var body: some View {
        Button(action: {
            print("Clicked button!")
        }) {
            VStack {
                Image(systemName: systemName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                Text(text)
            }
            .frame(width: 100, height: 100)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ImageButton(systemName: "play", text: "play")
    }
}
