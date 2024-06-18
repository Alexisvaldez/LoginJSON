//
//  JSONApp.swift
//  JSON
//
//  Created by user on 25/04/24.
//

import SwiftUI

@main
struct JSONApp: App {
    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
