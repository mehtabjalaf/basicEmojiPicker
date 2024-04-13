//
//  ContentView.swift
//  try3
//
//  Created by Mehtab Jalaf on 2024-04-11.
//

import SwiftUI


enum Emoji: String, CaseIterable {
    // enum is a group of cases of what something can do, plane can be: flying, landing, standing
    case 🤣, 😍, 😎, 🤨
}


struct ContentView: View {
    @State var selection: Emoji = .🤣
    var body: some View {
        NavigationView {
            VStack { // Helps vertically stack ui elements
                Text(selection.rawValue)
                    .font(.system(size: 150))
                // swift ui is a declarative frameform, this means that we can say that when ever some part of our data changes, we should have the UI update automatically (the $) - is a binding to the state
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Mehtab's First App")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
