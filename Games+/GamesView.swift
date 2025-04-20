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
                    
                    ScrollSmall(categoryTitle: "Jogue a demo", games: ["AC: Shadows", "Deltarune", "Silksong", "Avowed", "South of Midnight"], description: "")
                    
                    ScrollMedium(categoryTitle: "Continue jogando", isLink: true, hasSubText: true, description: "", games: ["Hades", "The Elder Scrolls V: Skyrim", "Stardew Valley", "Avowed", "Minecraft"])
                    
                    PopularView()
                    
                    ScrollSmall(categoryTitle: "Jogos de RPG", games: ["The Elder Scrolls V: Skyrim", "The Witcher 3", "Baldurs Gate 3", "Avowed", "Final Fantasy XVI"], description: "")
                    
                    ScrollSmall(categoryTitle: "Adicionados recentemente", games: ["Silksong", "AC: Shadows", "Avowed", "South of Midnight", "Deltarune",], description: "")
                    
                    ScrollGenre(genre:["RPG", "Rhythm", "Casual", "Sports", "MOBA"])
                    
                    ScrollSmall(categoryTitle: "Jogos de ação/aventura", games: ["Avowed","God of War (2018)", "Hades", "Spider-Man", "Doom (2016)"], description: "")
                    
                    ScrollSmall(categoryTitle: "Para você", games: ["Oxygen Not Included", "Far Cry 5", "Mario", "Silksong", "Baldurs Gate 3"], description: "Curta recomendações personalizadas inspiradas no que já jogou.")
                    
                    ScrollMedium(categoryTitle: "Perfeitos em familia", isLink: false, hasSubText: false, description: "Jogue esses jogos com histórias incríveis para a família.", games: ["South of Midnight", "Undertale", "Stardew Valley", "Silksong", "The Elder Scrolls V: Skyrim"])
                    
                    ScrollSmall(categoryTitle: "Jogos a preços especiais", games: ["Baldurs Gate 3", "The Elder Scrolls V: Skyrim", "EAFC 25", "Avowed", "Final Fantasy XVI"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de FPS", games: ["Valorant", "Counter Strike 2", "Titanfall 2", "Far Cry 5", "Doom (2016)"],description: "")
                    
                    ScrollSmall(categoryTitle: "Em alta", games: ["Hades 2", "Path of Exile 2", "Dota 2", "Valorant", "Minecraft"], description: "")
                    
                    ScrollSmall(categoryTitle: "Para jogar com os amigos", games: ["League of Legends", "Dota 2", "Valorant", "Counter Strike 2", "Minecraft"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de esporte", games: ["EAFC 25", "F1: 2024", "Madden NFL 25", "NBA2k25", "The Show 25"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de simulação", games: ["Cities Skylines", "Manor Lords", "Oxygen Not Included", "Two Point Hospital", "The Sims 4"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de Roguelike", games: ["Cult of the Lamb", "Dead Cells", "The Binding of Isaac", "Vampire Survivors", "Hades"], description: "")
                    
                    ScrollMedium(categoryTitle: "Explore as séries de jogos", isLink: false, hasSubText: false, description: "", games: ["Mario", "Far Cry", "Sonic", "God of War", "Street Fighter"])
                    
                    ScrollGenre(genre:["RPG", "Rhythm", "Casual", "Sports", "MOBA"])
                    
                    SubscriptionView()
                }
            }
            .navigationBarTitle("GAMES+")
            .edgesIgnoringSafeArea(.top) 
        }
    }
}

#Preview {
    GamesView()
}
