//
//  NewsRepository.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import Foundation

protocol NewsRepository {
    func fetchAllNews() async -> ApiResponse
    func fetchHeadlines() async -> ApiResponse
}
