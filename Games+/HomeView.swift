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
                    ScrollMedium(categoryTitle: "Continue jogando", isLink: true, hasSubText: true, description: "", games: ["Hades", "The Elder Scrolls V: Skyrim", "Stardew Valley", "Avowed", "Minecraft"])
                    
                    //MARK: ESTREIAS
                    ScrollSmall(categoryTitle: "Jogue a demo", games: ["AC: Shadows", "Deltarune", "Silksong", "Avowed", "South of Midnight"], description: "")
                    
                    //MARK: POPULARES
                    PopularView()
                    
                    //MARK: EXPLORE DEVS
                    PublisherView()
                    
                    //MARK: INCRIÇÃO
                    SubscriptionView()
                    
                    //MARK: FPS
                    ScrollSmall(categoryTitle: "Jogos de FPS", games: ["Valorant", "Counter Strike 2", "Titanfall 2", "Far Cry 5", "Doom (2016)"], description: "")
                    
                    //MARK: CLIPS
                    ClipsView()
                    
                    //MARK: PARA VOCÊ
                    ScrollSmall(categoryTitle: "Para você", games: ["South of Midnight", "Undertale", "Stardew Valley", "Silksong", "The Elder Scrolls V: Skyrim"], description: "")
                    
                    //MARK: JOGOS ONLINE
                    ScrollSmall(categoryTitle: "Para jogar com os amigos", games: ["League of Legends", "Dota 2", "Valorant", "Counter Strike 2", "Minecraft"], description: "")
                    
                    //MARK: JOGOS CASUAIS
                    ScrollSmall(categoryTitle: "Diversão em família", games: ["Stardew Valley", "It Takes Two", "Minecraft", "Overcooked 2", "Party Animals"], description: "")
                    
                    //MARK: ADD RECENTEMENTE
                    ScrollSmall(categoryTitle: "Adicionados recentemente", games: [ "Silksong", "AC: Shadows", "Avowed", "South of Midnight", "Deltarune",], description: "")
                    
                    //MARK: JOGOS ACAO
                    ScrollSmall(categoryTitle: "Jogos de ação/aventura", games: ["Avowed", "God of War (2018)", "Hades", "Spider-Man", "Doom (2016)"], description: "")
                    
                    //MARK: ESPORTES
                    ScrollSmall(categoryTitle: "Jogos de esporte", games: ["EAFC 25", "F1: 2024", "Madden NFL 25", "NBA2k25", "The Show 25"], description: "")
                    
                    //MARK: BANNERS
                    BannerView()
                    
                    //MARK: RPG
                    ScrollSmall(categoryTitle: "Jogos de RPG", games: ["The Elder Scrolls V: Skyrim", "The Witcher 3", "Baldurs Gate 3", "Avowed", "Final Fantasy XVI"], description: "")
                    
                    //MARK: EM ALTA
                    ScrollSmall(categoryTitle: "Em alta", games: ["Hades 2", "Path of Exile 2", "Dota 2", "Valorant", "Minecraft"], description: "")
                    
                    //MARK: FRANQUIAS
                    ScrollMedium(categoryTitle: "Explore as séries de jogos", isLink: false, hasSubText: false, description: "", games: ["Mario", "Far Cry", "Sonic", "God of War", "Street Fighter"])
                    
                    //MARK: PRECOS ESPECIAIS
                    ScrollSmall(categoryTitle: "Jogos a preços especiais", games: ["Baldurs Gate 3", "The Elder Scrolls V: Skyrim", "EAFC 25", "Avowed", "Final Fantasy XVI"], description: "")
                    
                    //MARK: GÊNERO
                    ScrollGenre(genre:["RPG", "Rhythm", "Casual", "Sports", "MOBA"
                    ])
                    
                    //MARK: INCRIÇÃO
                    SubscriptionView()
                    
                    
                }
            }
            .navigationBarTitle("Início")
            .edgesIgnoringSafeArea(.top)   
        }
    }
}

#Preview {
    HomeView()
}

//TODO: TORNAR COIASS BOTAO
//TODO: ENUM
