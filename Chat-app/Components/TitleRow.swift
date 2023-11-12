//
//  TitleRow.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 11/11/2023.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var name:String = "Matthew Cook"
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) {image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                
                Text("Online")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding()
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    TitleRow()
}
