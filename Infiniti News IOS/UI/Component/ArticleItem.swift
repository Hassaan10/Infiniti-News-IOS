//
//  ArticleItem.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

struct ArticleItem: View {
    let article: Article
    init(article: Article) {
        self.article = article
    }
    var body: some View {
        if(article.urlToImage != nil) {
            ZStack(alignment: .bottom) {
                AsyncImage(url: URL(string: article.urlToImage!))
                    .cornerRadius(25)
                    .scaledToFit()
                    .padding().frame(width: 100,height: 80)
                Text(article.title)
            }.padding()
        }
    }
}

#Preview {
//    ArticleItem(article: Article(from: ))
}
