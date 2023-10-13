//
//  ExerciseCounterApp.swift
//  ExerciseCounter
//
//  Created by Rika Takashima on 12/10/2023.
//

import SwiftUI

@main
struct ExerciseCounterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
