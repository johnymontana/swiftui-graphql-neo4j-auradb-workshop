//
//  ArticleModel.swift
//  NewsGraph
//
//  Created by lyonwj on 6/5/22.
//

import Foundation

typealias ArticleData = MostRecentArticlesQuery.Data.Article

struct Articles: Decodable {
    var articles: [Article]
    
    init(_ articles: [ArticleData]) {
        self.articles = articles.map({ article -> Article in
            Article(article)
        })
    }
    
    struct Article: Identifiable, Decodable {
        var id: String
        var title: String
        var url: String
        var published: String
        var abstract: String
        var photo: Photo
        
        
        init(_ article: ArticleData?) {
            self.id = article?.url ?? ""
            self.title = article?.title ?? ""
            self.url = article?.title ?? ""
            self.published = article?.published ?? ""
            self.abstract = article?.abstract ?? ""
            self.photo = Photo(article?.photo)
        }
        
        struct Photo: Decodable {
            var caption: String
            var url: String
            
            init(_ photo: ArticleData.Photo?) {
                self.caption = photo?.caption ?? ""
                self.url = photo?.url ?? ""
            }
        }
        
    }
}
