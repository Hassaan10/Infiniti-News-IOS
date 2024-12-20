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
            Text("All News")
                .font(.headline)
            ScrollView(.vertical) {
                LazyVStack(alignment: .center) {
                    ForEach(articles) { article in
                        ArticleItem(article: article).padding().frame(width: 50, height: 100)
                    }
                }
            }
        }
    }
}

#Preview {
//    AllNewsSection()
}
