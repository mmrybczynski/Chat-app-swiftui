//
//  MessageBubble.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 13/11/2023.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    var body: some View {
        VStack(alignment: message.recived ? .leading : .trailing) {
            HStack {
                Text(message.Text)
                    .padding()
                    .background(message.recived ? Color("Gray") : Color("Green"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: .infinity, alignment: message.recived ? .leading : .trailing)
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "1", Text: "Hello, my name is Mateusz.", recived: false, timestamp: Date()))
}
