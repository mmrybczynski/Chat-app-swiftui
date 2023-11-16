//
//  MessageField.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 16/11/2023.
//

import SwiftUI

struct MessageField: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
