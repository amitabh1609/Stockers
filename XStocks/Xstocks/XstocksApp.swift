//
//  XstocksApp.swift
//  Xstocks
//
//  Created by Amitabh Choudhury on 10/01/23.
//

import SwiftUI

@main
struct StocksApp: App {
    
    @StateObject var appVM = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainListView()
            }
            .environmentObject(appVM)
        }
    }
}
