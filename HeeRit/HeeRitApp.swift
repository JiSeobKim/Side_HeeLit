//
//  HeeRitApp.swift
//  HeeRit
//
//  Created by 김지섭 on 2021/09/13.
//

import SwiftUI

@main
struct HeeRitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
