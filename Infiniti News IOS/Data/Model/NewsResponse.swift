//
//  Source.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//


struct NewsResponse : Codable {
    let status : String
    let totalResults : Int
    let articles : [Article]
}
