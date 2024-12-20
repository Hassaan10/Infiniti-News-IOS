//
//  ContentView.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

struct MainScreen: View {
    let newsApi : NewsApi
    let newsRepository: NewsRepository
    let allNewsUseCase : AllNewsUseCase
    let headlinesUseCase : HeadlinesUseCase
    @ObservedObject var viewModel : ViewModel
    
    init() {
        self.newsApi = NewsApi()
        self.newsRepository = NewsRepositoryImpl(api: newsApi)
        self.allNewsUseCase = AllNewsUseCase(newsRepository: newsRepository)
        self.headlinesUseCase = HeadlinesUseCase(newsRepository: newsRepository)
        self.viewModel = ViewModel(allnewsUsecase: allNewsUseCase, headlineUsecase: headlinesUseCase)
    }
    
    var body: some View {
        ScrollView {
//            switch viewModel.headlinesState {
//            case .loading:
//                ProgressView()
//            case .data(let array):
//                HeadlinesSection(articles: array)
//            case .error(let string):
//                Text(string)
//            }
            
//            VStack {
                switch viewModel.allnewsState {
                case .loading:
                    ProgressView()
                case .data(let array):
                    AllNewsSection(articles: array)
                case .error(let string):
                    Text(string)
                }
//            }
        }
    }
}

#Preview {
//    MainScreen()
}
