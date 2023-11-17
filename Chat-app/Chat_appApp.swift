//
//  Chat_appApp.swift
//  Chat-app
//
//  Created by Mateusz Rybczyński on 11/11/2023.
//

import SwiftUI
import Firebase

@main
struct Chat_appApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
