//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Smetana, Ryan on 12/12/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
