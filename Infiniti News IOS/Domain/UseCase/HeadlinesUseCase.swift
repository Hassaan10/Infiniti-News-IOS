//
//  AllNewsUseCase.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import Foundation

class HeadlinesUseCase {
    let newsRepository: NewsRepository
    init(newsRepository: NewsRepository) {
        self.newsRepository = newsRepository
    }
    
    func execute() async -> ApiResponse {
        return await newsRepository.fetchHeadlines()
    }
}
