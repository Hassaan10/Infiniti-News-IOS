//
//  ViewModel.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    private let allnewsUsecase: AllNewsUseCase
    private let headlinesUseCase: HeadlinesUseCase
    
    @Published var headlinesState: ApiResponse = ApiResponse.loading
    @Published var allnewsState: ApiResponse = ApiResponse.loading

    
    init(allnewsUsecase: AllNewsUseCase, headlineUsecase: HeadlinesUseCase) {
        self.allnewsUsecase = allnewsUsecase
        self.headlinesUseCase = headlineUsecase
        
        Task { @MainActor in
            allnewsState = await allnewsUsecase.execute()
            headlinesState = await headlinesUseCase.execute()
        }
    }

}
