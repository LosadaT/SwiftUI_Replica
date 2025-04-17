//
//  SeriesView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct SeriesView: View {
    
    private var keepPlayingImg: [String] = [
        "Mario",
        "Far Cry",
        "Sonic",
        "God of War",
        "Street Fighter"
    ]
    
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    
    var body: some View {
        HStack{
            Text("Explore as séries de jogos")
                .padding(.leading, 25)
                .font(.system(size: 23))
                .fontWeight(.bold)
            Spacer()
        }
        
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(10)
                
                HStack{
                    //ForEach que mostra a colecao de imagens
                    ForEach(keepPlayingImg, id: \.self) {
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
    SeriesView()
}
