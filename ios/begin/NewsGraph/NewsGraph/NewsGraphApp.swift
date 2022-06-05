//
//  NewsGraphApp.swift
//  NewsGraph
//
//  Created by lyonwj on 6/5/22.
//

import SwiftUI

@main
struct NewsGraphApp: App {
    @StateObject var articlesViewModel = ArticlesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(articlesViewModel)
        }
    }
}
