//
//  GamesView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct GamesView: View {
    var body: some View {
        NavigationStack {
            ScrollView([.vertical], showsIndicators: false){
                VStack{
                    PosterView()
                    
                    DemoView()
                    
                    KeepPlayingView()
                    
                    PopularView()
                    
                    RpgView()
                    
                    NewView()
                    
                    GenreView()
                    
                    ActionView()
                    
                    ForYou2View() //TODO: ALINHARRRR
                    
                    Casual2View()//TODO: ALINHARRRR
                    
                    SaleView()
                    
                    FpsView()
                    
                    TrendingView()
                    
                    OnlineView()
                    
                    SportsView()
                    
                    SimulationView()
                    
                    RogueView()
                    
                    SeriesView()
                    
                    GenreView()
                    
                    SubscriptionView()
                }
            }
            .navigationBarTitle("GAMES+")
            //.navigationBarTitleDisplayMode(.large)
           /* .toolbar{
                ToolbarItem(placement: .navigation){
                    Text("Início")
                        .font(.largeTitle)
                        .bold()
                    
                        
                }
            }
            .toolbarBackground(.clear, for: .navigationBar)
            .toolbarTitleMenu{
                Text("Início")
            }
            */
            .edgesIgnoringSafeArea(.top)
            //.border(.red)
            
        }
    }
}

#Preview {
    GamesView()
}
