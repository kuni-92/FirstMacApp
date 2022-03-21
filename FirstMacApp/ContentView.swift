//
//  ContentView.swift
//  FirstMacApp
//  
//  Created by kunikuni03 on 2022/03/20
//  
//

import SwiftUI

struct ContentView: View {
    @State private var textEnglish: String = ""
    @State private var textJapanese: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("翻訳ツール")
                    .padding()
                Spacer()
                Button("実行", action: {})
                    .padding()
            }

            // 英語表示エリア
            HStack {
                Text("英語")
                    .font(.title2)
                    .frame(width: 50)
                TextEditor(text: $textEnglish)
                    .border(.blue)
            }
            .frame(height: 50)
            .padding()

            Image(systemName: "arrow.down")
                .font(.title3)

            // 日本語表示エリア
            HStack {
                Text("日本語")
                    .font(.title2)
                    .frame(width: 50)
                TextEditor(text: $textJapanese)
                    .border(.blue)
            }
            .frame(height: 50)
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
