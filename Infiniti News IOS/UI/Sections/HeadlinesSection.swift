//
//  HeadlinesSection.swift
//  Infiniti News IOS
//
//  Created by Hassaan Raza on 26/10/2024.
//

import SwiftUI

struct HeadlinesSection: View {
    
    let articles : [Article]
    
    init(articles: [Article]) {
        self.articles = articles
    }
    
    var body: some View {
        VStack {
            Text("Headlines")
                .font(.headline)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(articles) { article in
                        ArticleItem(article: article).padding().frame(width: 50, height: 100)
                    }
                }
            }
        }
    }
}

#Preview {
//    HeadlinesSection()
}
