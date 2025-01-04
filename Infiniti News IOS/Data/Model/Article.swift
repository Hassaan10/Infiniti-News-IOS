//
//  Article.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import Foundation

struct Article : Codable, Identifiable {
    var id : UUID = UUID()
    let source : Source?
    let author : String?
    let title : String
    let description : String?
    let url : String?
    let urlToImage : String?
    let publishedAt : String?
    let content : String?
    
    enum CodingKeys: String, CodingKey {

        case source = "source"
        case author = "author"
        case title = "title"
        case description = "description"
        case url = "url"
        case urlToImage = "urlToImage"
        case publishedAt = "publishedAt"
        case content = "content"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        source = try values.decodeIfPresent(Source.self, forKey: .source)
        author = try values.decodeIfPresent(String.self, forKey: .author)
        title = try values.decode(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        urlToImage = try values.decodeIfPresent(String.self, forKey: .urlToImage)
        publishedAt = try values.decodeIfPresent(String.self, forKey: .publishedAt)
        content = try values.decodeIfPresent(String.self, forKey: .content)
    }
    
    init(title : String,
         urlToImage : String?) {
        self.title = title
        self.urlToImage = urlToImage
        
        self.author = ""
        self.content = ""
        self.description = ""
        self.publishedAt = ""
        self.source = Source(id: "1", name: "BBC")
        self.url =  nil
    }
    
}
