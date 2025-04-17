//
//  StoreView.swift
//  Games+
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        NavigationStack{
            ScrollView([.vertical], showsIndicators: false){
                VStack{
                    PosterView()
                    
                    PopularView()
                    
                    PublisherView()
                    
                    NewView()
                    
                    ForYouView()
                    
                    RentView()
                    
                    TrendingView()
                    
                    Popular2View()
                    
                    RpgView()
                    
                    SimulationView()
                    
                    RogueView()
                    
                    PriceView()
                    
                    CasualView()
                    
                    SeriesView()
                    
                    GenreView()
                }
            }
            .navigationBarTitle("Loja")
            .edgesIgnoringSafeArea(.top)
            
        }
    }
}

#Preview {
    StoreView()
}
