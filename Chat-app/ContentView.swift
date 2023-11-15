//
//  ContentView.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 11/11/2023.
//

import SwiftUI

struct ContentView: View {
    var messageArray: [String] = ["Hello", "Hi", "What are you doing?", "I am programming new chat app"]
    var body: some View {
        VStack {
            TitleRow()
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                      MessageBubble(message: Message(id: "1", Text: text, recived: true, timestamp: Date()))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
