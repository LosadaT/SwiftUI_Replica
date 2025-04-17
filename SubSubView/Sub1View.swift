//
//  Sub1View.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct Sub1View: View {
    private var search1: [String] = [
        "AC: Shadows",
        "Deltarune",
        "Silksong",
        "Avowed",
        "South of Midnight",
        "Hades",
        "Stardew Valley",
        "Avowed",
        "Minecraft"
    ]
    
    private var search2: [String] = [
        "Mario",
        "Hades 2",
        "EAFC 25",
        "Cities Skylines",
        "Sonic",
        "Titanfall 2",
        "Dead Cells",
        "Vampire Survivors",
        "The Witcher 3"
    ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        ScrollView([.vertical], showsIndicators: false){
            HStack{
                VStack{
                    ForEach(search1, id: \.self) {
                        imageString in VStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: cardWidth, height: cardHeight)
                            Text(imageString)
                                .font(.system(size: 15))
                                .padding(.bottom, 10)
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                
                
                VStack{
                    ForEach(search2, id: \.self) {
                        imageString in VStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: cardWidth, height: cardHeight)
                            Text(imageString)
                                .font(.system(size: 15))
                                .padding(.bottom, 10)
                        }
                    }
                }
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    Sub1View()
}
