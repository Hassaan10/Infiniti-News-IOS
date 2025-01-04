//
//  NewsComponent.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 27/10/2024.
//
import Foundation
import NeedleFoundation

class MainComponent : BootstrapComponent {
    
    public var newsApi : NewsApi { return NewsApi() }
    
    public var newsRepository: NewsRepository { return shared { NewsRepositoryImpl(api: newsApi) } }
    
    public var allNewsUseCase: AllNewsUseCase { return shared { AllNewsUseCase(newsRepository: newsRepository) } }
    
    public var headlinesUseCase: HeadlinesUseCase { return shared { HeadlinesUseCase(newsRepository: newsRepository) } }
    
    public var newsViewModel: ViewModel { return shared { ViewModel(allnewsUsecase: allNewsUseCase, headlineUsecase: headlinesUseCase) } }
    
    public var newsView: MainScreen { return shared { MainScreen(viewModel: newsViewModel) } }
    
    public var newsComponent: NewsComponent { return NewsComponent(parent: self) }
    
}
