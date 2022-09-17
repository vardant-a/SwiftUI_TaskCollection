//
//  SwiftUI_TaskCollectionApp.swift
//  SwiftUI_TaskCollection
//
//  Created by Алексей on 13.09.2022.
//

import SwiftUI

@main
struct SwiftUI_TaskCollectionApp: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(userManager)
        }
    }
}
