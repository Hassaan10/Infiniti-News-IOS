//
//  BaseResponse.swift
//  API with Swift UI
//
//  Created by Hassaan Raza on 21/11/2023.
//

import Foundation

enum ApiResponse {
    
    case loading
    case data([Article])
    case error(String)
    
}
