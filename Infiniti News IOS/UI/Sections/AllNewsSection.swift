//
//  HeadlinesSection.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

struct AllNewsSection: View {
    let articles : [Article]
    
    init(articles: [Article]) {
        self.articles = articles
    }
    
    var body: some View {
        VStack {
            Text(WHATS_HAPPENING_AROUND_THE_WORLD)
                .font(.headline)
            ScrollView(.vertical) {
                LazyVStack(spacing: 20) {
                    ForEach(articles) { article in
                        ArticleItem(article: article, width: .infinity, height: .infinity)
                    }
                }
            }
        }
    }
}

#Preview {
    AllNewsSection(articles: [Article(title: "Some title", urlToImage: "https://cloudinary-marketing-res.cloudinary.com/images/w_1000,c_scale/v1679921049/Image_URL_header/Image_URL_header-png?_i=AA"), Article(title: "Some title", urlToImage: "https://cloudinary-marketing-res.cloudinary.com/images/w_1000,c_scale/v1679921049/Image_URL_header/Image_URL_header-png?_i=AA")])
}
