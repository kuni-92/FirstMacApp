//
//  ContentView.swift
//  FirstMacApp
//  
//  Created by kunikuni03 on 2022/03/20
//  
//

import SwiftUI

struct ContentView: View {
    @State private var beforeText: String = ""
    @State private var afterText: String = ""
    var body: some View {
        VStack {
            // 変換元エリア
            VStack(alignment: .leading) {
                Text("変換元")
                    .font(.title2)
                    .foregroundColor(.blue)
                TextEditor(text: $beforeText)
                    .border(.blue)
            }
            .frame(height: 100)
            .padding()

            Image(systemName: "arrow.down")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
                .frame(width: 64, height: 64)

            // 変換結果エリア
            VStack(alignment: .leading) {
                Text("変換先")
                    .font(.title2)
                    .foregroundColor(.red)
                TextEditor(text: $afterText)
                    .border(.blue)
            }
            .frame(height: 100)
            .padding()

            HStack {
                // 変換ボタン
                ImageButton(systemName: "play", text: "convert")
                    .padding()
                    .border(.gray)
                // 設定ボタン
                ImageButton(systemName: "gear", text: "setting")
                    .padding()
                    .border(.gray)

            }
            .padding()
        }
        .frame(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
