//
//  iWorkHomeApp.swift
//  iWorkHome
//
//  Created by David Buhauer on 05/11/2021.
//

import SwiftUI
import Firebase

@main
struct iWorkHomeApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
