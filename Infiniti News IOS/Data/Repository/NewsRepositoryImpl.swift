//
//  NewsRepositoryImpl.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import Foundation

class NewsRepositoryImpl : NewsRepository {
    let api: NewsApi
    
    init(api: NewsApi) {
        self.api = api
    }
    
    func fetchAllNews() async -> ApiResponse {
        do {
            let result = try await api.call(endPoint: "everything?q=keyword")
            return ApiResponse.data(result.articles)
        }
        catch {
            return ApiResponse.error(error.localizedDescription)
        }
    }
    
    func fetchHeadlines() async -> ApiResponse {
        do {
            let result = try await api.call(endPoint: "top-headlines?country=us")
            return ApiResponse.data(result.articles)
        }
        catch {
            return ApiResponse.error(error.localizedDescription)
        }
    }
    
    
}
