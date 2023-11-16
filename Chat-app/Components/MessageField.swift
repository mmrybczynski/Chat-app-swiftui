//
//  MessageField.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 16/11/2023.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Write..."), text: $message)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "paperplane.fill")
                    .disabled(message.isEmpty ? true : false)
                    .foregroundColor(message.isEmpty ? .gray : .white)
                    .padding()
                    .background(message.isEmpty ? nil : Color("Green"))
                    .cornerRadius(50)
            })
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(50)
        .padding(.horizontal)
    }
}

#Preview {
    MessageField()
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var edditingChanged: (Bool) -> () = { _ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("",text: $text, onEditingChanged: edditingChanged, onCommit: commit)
        }
    }
}
