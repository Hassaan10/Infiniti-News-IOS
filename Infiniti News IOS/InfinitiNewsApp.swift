//
//  Infiniti_News_IOSApp.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

@main
struct InfinitNewsApp: App {
    let di: MainDI
    init() {
        di = MainDI()
    }
    
    var body: some Scene {
        WindowGroup {
            MainScreen(viewModel: di.getViewModel())
        }
    }
}
