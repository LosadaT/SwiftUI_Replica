//
//  ContentView.swift
//  Games+
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView
             {
                HomeView()
                    .tabItem {
                        Label("Início", systemImage: "gamecontroller.fill")
                    }
                GamesView()
                    .tabItem {
                        Label("Games+",systemImage: "play.fill")
                    }
                StoreView()
                    .tabItem {
                        Label("Loja", systemImage: "bag.fill")
                    }
                CollectionView()
                    .tabItem {
                        Label("Biblioteca", systemImage: "square.stack.fill")
                    }
                SearchView()
                    .tabItem {
                        Label("Buscar", systemImage: "magnifyingglass")
                    }
            }
        .tint(.main)
        

    }
}


#Preview {
    ContentView()
}
