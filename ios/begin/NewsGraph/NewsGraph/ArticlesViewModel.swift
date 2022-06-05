//
//  ArticlesViewModel.swift
//  NewsGraph
//
//  Created by lyonwj on 6/5/22.
//

import Foundation

final class ArticlesViewModel: ObservableObject {
    
    @Published var articles: [Articles.Article] = []
    
    func process(data: [ArticleData]) -> [Articles.Article] {
        return Articles(data).articles
    }
    
    
    func fetch() {
        Network.shared.apollo.fetch(query: MostRecentArticlesQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let articles = graphQLResult.data?.articles {
                    print("Success! Result: \(graphQLResult)")
                    self.articles = self.process(data: articles)
                } else if let errors = graphQLResult.errors {
                    print("GraphQL errors \(errors)")
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    init() {
        fetch()
    }
    
}


