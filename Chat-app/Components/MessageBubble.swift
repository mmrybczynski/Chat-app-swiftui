//
//  MessageBubble.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 13/11/2023.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.recived ? .leading : .trailing) {
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.system(size: 12))
                    .padding(message.recived ? .leading : .trailing)
            }
            HStack {
                Text(message.Text)
                    .padding()
                    .background(message.recived ? Color("LightGray") : Color("Green"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: .infinity, alignment: message.recived ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "1", Text: "Hello, my name is Mateusz.", recived: true, timestamp: Date()))
}
