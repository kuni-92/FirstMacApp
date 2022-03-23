//
//  ConvertButton.swift
//  FirstMacApp
//  
//  Created by kunikuni03 on 2022/03/23
//  
//

import SwiftUI

struct ConvertButton: View {
    var body: some View {
        Button(action: {
            print("Clicked Convert button!")
        }) {
            VStack {
                Image(systemName: "play")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                Text("Convert")
            }
            .frame(width: 100, height: 100)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ConvertButton_Previews: PreviewProvider {
    static var previews: some View {
        ConvertButton()
    }
}
