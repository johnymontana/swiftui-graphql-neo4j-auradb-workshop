//
//  ContentView.swift
//  NewsGraph
//
//  Created by lyonwj on 6/5/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var articlesViewModel: ArticlesViewModel
    var body: some View {
        ScrollView {
            ForEach(articlesViewModel.articles) { article in
                ArticleCardView(title: article.title, abstract: article.abstract).padding()
            }
        }
    }
}

struct ArticleCardView: View {
    var title: String
    var abstract: String
    var body: some View {
        Text(title).font(Font.title.weight(.heavy))
        Text(abstract)
        Divider()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ArticlesViewModel())
    }
}
