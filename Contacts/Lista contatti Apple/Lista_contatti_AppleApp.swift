//
// Lista_contatti_AppleApp.swift

import SwiftUI

@main
struct ContattiApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            
            TabView {
                
                Favourites ()
                    .tabItem {
                        Label ("Favourites", systemImage: "star.circle")
                    }
                Recents ()
                    .tabItem {
                        Label ("Recents", systemImage: "clock.circle")
                    }
                Contacts ()
                    .tabItem {
                        Label ("Contacts", systemImage: "person.circle")
                    }
                Keypad ()
                    .tabItem {
                        Label ("Keypad", systemImage: "square.grid.3x3")
                    }
                Voicemail ()
                    .tabItem {
                        Label ("Voicemail", systemImage: "waveform")
                    }
            }
            
        }
        
    }
    
}

