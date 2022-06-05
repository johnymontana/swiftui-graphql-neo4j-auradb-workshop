//
//  Network.swift
//  NewsGraph
//
//  Created by lyonwj on 6/5/22.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    let url = "https://news-graph.vercel.app/api/graphql"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
