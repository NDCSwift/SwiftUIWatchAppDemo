//
    // Project: SwiftUIWatchAppDemo
    //  File: WatchWidget.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import WidgetKit
import SwiftUI

// Timeline entry representing a single random number value at a specific date
struct RandomNumberEntry: TimelineEntry {
    let date: Date
    let value: Int
}

// Provides placeholder, snapshot, and timeline entries for the widget
struct Provider: TimelineProvider{
    // Shown in the widget gallery and while loading; should be fast and static
    func placeholder(in context: Context) -> RandomNumberEntry {
        RandomNumberEntry(date: Date(), value: 42)
    }
    // Quick snapshot for previews and transient states
    func getSnapshot(in context: Context, completion: @escaping (RandomNumberEntry) -> Void) {
        completion(RandomNumberEntry(date: Date(), value: 42))
    }
    
    // Supplies timeline entries and a refresh policy for the widget
    func getTimeline(in context: Context, completion: @escaping (Timeline<RandomNumberEntry>) -> Void) {
        // Create one entry with a random value
        let entry = RandomNumberEntry(date: Date(), value: Int.random(in: 1...100))
        
        // Refresh again in 5 minutes
        let next = Calendar.current.date(byAdding: .minute, value: 5, to: Date())!
        
        completion(Timeline(entries: [entry], policy: .after(next)))
    }
}

// The SwiftUI view used to render the complication content
struct RandomNumberComplicationView: View {
    var entry: RandomNumberEntry
    var body: some View {
        
        // Simple circular badge with the random number
        ZStack{
            Circle().fill(.blue)
            Text("\(entry.value)")
                .font(.headline)
                .foregroundStyle(.white)
        }
        
    }
}

// The widget configuration describing families and the provider
struct RandomNumberWidget: Widget {
    
    let kind = "RandomNumberWidget"

    var body: some WidgetConfiguration {
        // Static configuration uses our provider to supply entries
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            RandomNumberComplicationView(entry: entry)
        }
        // Supported Apple Watch complication families
        .supportedFamilies([
            .accessoryCircular,
            .accessoryCorner,
            .accessoryInline,
            .accessoryRectangular
        ])
    }
}
