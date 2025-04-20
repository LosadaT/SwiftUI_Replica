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
                    
                    ScrollSmall(categoryTitle: "Adicionados recentemente", games: [ "Silksong", "AC: Shadows", "Avowed", "South of Midnight", "Deltarune",], description: "")
                    
                    ScrollSmall(categoryTitle: "Para você", games: ["South of Midnight", "Undertale", "Stardew Valley", "Silksong", "The Elder Scrolls V: Skyrim"], description: "")
                    
                    ScrollSmall(categoryTitle: "Disponível para Alugar", games: ["Avowed", "Manor Lords", "It Takes Two", "The Sims 4", "Dead Cells"], description: "")
                    
                    ScrollSmall(categoryTitle: "Em alta", games: ["Hades 2", "Path of Exile 2", "Dota 2", "Valorant", "Minecraft"], description: "")
                    
                    Popular2View()
                    
                    ScrollSmall(categoryTitle: "Jogos de RPG", games: ["The Elder Scrolls V: Skyrim", "The Witcher 3", "Baldurs Gate 3", "Avowed", "Final Fantasy XVI"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de simulação", games: ["Cities Skylines", "Manor Lords", "Oxygen Not Included", "Two Point Hospital", "The Sims 4"], description: "")
                    
                    ScrollSmall(categoryTitle: "Jogos de Roguelike", games: ["Cult of the Lamb", "Dead Cells", "The Binding of Isaac", "Vampire Survivors", "Hades"], description: "")
                    
                    PriceView()
                    
                    ScrollSmall(categoryTitle: "Diversão em família", games: ["Stardew Valley", "It Takes Two", "Minecraft", "Overcooked 2", "Party Animals"], description: "")
                    
                    ScrollMedium(categoryTitle: "Explore as séries de jogos", isLink: false, hasSubText: false, description: "", games: ["Mario", "Far Cry", "Sonic", "God of War", "Street Fighter"])
                    
                    ScrollGenre(genre:["RPG", "Rhythm", "Casual", "Sports", "MOBA"])
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
