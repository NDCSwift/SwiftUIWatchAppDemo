//
    // Project: SwiftUIWatchAppDemo
    //  File: WatchWidgetBundle.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import WidgetKit
import SwiftUI

// Widget bundle entry point that registers all widgets in this extension
@main
struct WatchWidgetBundle: WidgetBundle {
    var body: some Widget {
        // Our single widget that shows a random number as a complication
        RandomNumberWidget()
    }
}
