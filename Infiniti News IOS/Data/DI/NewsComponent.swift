//
//  NewsComponent.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 27/10/2024.
//
import Foundation
import NeedleFoundation

class NewsComponent : Component<NewsDependency> {
    
    var newsApi : NewsApi { return shared {NewsApi()} }
    
    var newsRepository: NewsRepository { return shared { NewsRepositoryImpl(api: newsApi) } }
    
    var allNewsUseCase: AllNewsUseCase { return shared { AllNewsUseCase(newsRepository: newsRepository) } }
    
    var headlinesUseCase: HeadlinesUseCase { return shared { HeadlinesUseCase(newsRepository: newsRepository) } }
    
    var newsViewModel: ViewModel { return shared { ViewModel(allnewsUsecase: allNewsUseCase, headlineUsecase: headlinesUseCase) } }
    
    var newsView: MainScreen { return shared { MainScreen() } }
        
}
