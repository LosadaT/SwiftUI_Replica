//
//  Sub2View.swift
//  Games+
//
//  Created by Aluno Mack on 16/04/25.
//

import SwiftUI

struct Sub2View: View {
    private var search1: [String] = [
        "RPG",
        "Rhythm",
        "Casual",
        "Sports",
        "Action",
        "FPS"
    ]
    
    private var search2: [String] = [
        "Nacionais",
        "MMORPG",
        "MOBA",
        "Battle Royale",
        "Survival",
        "Horror"
    ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        ScrollView([.vertical], showsIndicators: false){
            HStack{
                VStack{
                    ForEach(search1, id: \.self) {
                        imageString in ZStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: cardWidth, height: cardHeight)
                            Text(imageString)
                                .bold()
                                .font(.title2)
                                .foregroundStyle(.white)
                                .padding(.top, 60)
                                .padding(.leading, 20)
                        }
                    }
                }
                
                VStack{
                    ForEach(search2, id: \.self) {
                        imageString in ZStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: cardWidth, height: cardHeight)
                            Text(imageString)
                                .bold()
                                .font(.title2)
                                .foregroundStyle(.white)
                                .padding(.top, 60)
                                .padding(.leading, 20)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Sub2View()
}
