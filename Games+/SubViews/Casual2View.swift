//
//  Sale2View.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct Casual2View: View {
    private var casual: [String] = [
        "South of Midnight",
        "Undertale",
        "Stardew Valley",
        "Silksong",
        "The Elder Scrolls V: Skyrim"
    ]
    
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    
    var body: some View {
        VStack{
            HStack{
                Text("Perfeitos em familia")
                    .padding(.trailing, 100)
                    .foregroundStyle(.texto)
                    .font(.system(size: 23))
                    .fontWeight(.bold)
            }
            Text("Jogue esses jogos com histórias incríveis para a família.")
                .multilineTextAlignment(.leading)
                
                
        }
        .padding(.leading, 26)
        .padding(.trailing, 50)

        
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(10)
                HStack{
                    //ForEach que mostra a colecao de imagens
                    ForEach(casual, id: \.self) {
                        imageString in VStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: keepPlayingWidth, height: keepPlayingHeight)
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .padding(.trailing, 8)

        }
        .scrollTargetBehavior(.viewAligned)
        .padding(.bottom, 20)
    }
}

#Preview {
    Casual2View()
}
