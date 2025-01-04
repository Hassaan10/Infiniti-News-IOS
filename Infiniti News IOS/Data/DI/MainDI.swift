//
//  MainDI.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 04/01/2025.
//

import Foundation

class MainDI {
 
    private var newsApi: NewsApi
    private var newsRepository: NewsRepository
    private var allNewsUseCase: AllNewsUseCase
    private var headlinesUseCase: HeadlinesUseCase
    private var viewModel: ViewModel
    
    init() {
        self.newsApi = NewsApi()
        self.newsRepository = NewsRepositoryImpl(api: newsApi)
        self.allNewsUseCase = AllNewsUseCase(newsRepository: newsRepository)
        self.headlinesUseCase = HeadlinesUseCase(newsRepository: newsRepository)
        self.viewModel = ViewModel(allnewsUsecase: allNewsUseCase, headlineUsecase: headlinesUseCase)
    }
    
    func getViewModel() -> ViewModel {
        return viewModel
    }
    
    
}
