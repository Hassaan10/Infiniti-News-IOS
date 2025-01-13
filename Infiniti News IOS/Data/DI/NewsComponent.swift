//
//  NewsComponent.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 27/10/2024.
//
import Foundation
import NeedleFoundation

class NewsComponent : Component<NewsDependency> {
    
    public var newsApi : NewsApi { return dependency.newsApi }
    
    public var newsRepository: NewsRepository { return NewsRepositoryImpl(api: dependency.newsApi) }

    public var allNewsUseCase: AllNewsUseCase { return shared { AllNewsUseCase(newsRepository: dependency.newsRepository) } }

    public var headlinesUseCase: HeadlinesUseCase { return shared { HeadlinesUseCase(newsRepository: dependency.newsRepository) } }

    public var newsViewModel: ViewModel { return shared { ViewModel(allnewsUsecase: dependency.allNewsUseCase, headlineUsecase: dependency.headlinesUseCase) } }
        
}
