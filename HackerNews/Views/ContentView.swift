//
//  ContentView.swift
//  HackerNews
//
//  Created by Andre Vinicius Torres Conrado on 20/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
        
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
               
            }
            .navigationTitle("Hacker News")
        }
        .navigationViewStyle(.stack)
        .onAppear {
            networkManager.fetchData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
