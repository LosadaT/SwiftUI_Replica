//
//  HomeView.swift
//  Games+
//
//  Created by Aluno Mack on 08/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView([.vertical], showsIndicators: false){
                VStack{
                    //TODO: travar
                    PosterView()
                    
                    //MARK: CONTINUE JOGANDO
                    KeepPlayingView()
                    
                    //MARK: ESTREIAS
                    DemoView()
                    
                    //MARK: POPULARES
                    PopularView()
                    
                    //MARK: EXPLORE DEVS
                    PublisherView()
                    
                    //MARK: INCRIÇÃO
                    SubscriptionView()
                    
                    //MARK: FPS
                    FpsView()
                    
                    //MARK: CLIPS
                    ClipsView()
                    
                    //MARK: PARA VOCÊ
                    ForYouView()
                    
                    //MARK: JOGOS ONLINE
                    OnlineView()
                    
                    //MARK: JOGOS CASUAIS
                    CasualView()
                    
                    //MARK: ADD RECENTEMENTE
                    NewView()
                    
                    //MARK: JOGOS ACAO
                    ActionView()
                    
                    //MARK: ESPORTES
                    SportsView()
                    
                    //MARK: BANNERS
                    BannerView()
                    
                    //MARK: RPG
                    RpgView()
                    
                    //MARK: EM ALTA
                    TrendingView()
                    
                    //MARK: FRANQUIAS
                    SeriesView()
                    
                    //MARK: PRECOS ESPECIAIS
                    SaleView()
                    
                    //MARK: GÊNERO
                    GenreView()
                    
                    //MARK: INCRIÇÃO
                    SubscriptionView()
                    
                    
                }
            }
            .navigationBarTitle("Início")
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
    HomeView()
}

//TODO: TORNAR COIASS BOTAO
//TODO: ENUM
