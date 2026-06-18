//
    // Project: SwiftUIWatchAppDemo
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

// Main view that demonstrates reading the Digital Crown value
struct ContentView: View {
    @State private var crownValue: Double = 0.0 // State variable bound to the Digital Crown rotation
    var body: some View {
        // Stack displaying the current crown value
        VStack {

            Text("Crown Value")
                .font(.headline)
            Text(String(format: "%.0f", crownValue))
                .font(.system(size: 40, weight: .bold))
            
        }
        .padding()
        // Enable focus so the Digital Crown can control this view
        .focusable(true)
        // Bind the Digital Crown to `crownValue` from 0 to 100 in steps of 1
        .digitalCrownRotation($crownValue, from:0, through: 100, by: 1.0)
    }
}

// SwiftUI preview for ContentView
#Preview {
    ContentView()
}

