//
//  ContentView.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

struct MainScreen: View {
    
    @ObservedObject var viewModel : ViewModel
    
    init() {
        self.viewModel = MainDI().getViewModel()
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                switch viewModel.headlinesState {
                case .loading:
                    ProgressView()
                case .data(let array):
                    HeadlinesSection(articles: array)
                case .error(let string):
                    Text(string)
                }
                
                
                
                switch viewModel.allnewsState {
                case .loading:
                    ProgressView()
                case .data(let array):
                    AllNewsSection(articles: array)
                case .error(let string):
                    Text(string)
                }
            }
        }}
}

#Preview {
    MainScreen()
}
