//
//  NewsComponent.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 27/10/2024.
//
import Foundation
import NeedleFoundation

protocol NewsDependency : Dependency {
    var newsApi : NewsApi { get }
    var newsRepository : NewsRepository { get }
    var allNewsUseCase : AllNewsUseCase { get }
    var headlinesUseCase: HeadlinesUseCase { get }
    var newsViewModel: ViewModel { get }
}
