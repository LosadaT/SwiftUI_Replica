//
//  ClipsView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct ClipsView: View {
    private var clip: [String] = [
        "Valorant Video 1",
        "Valorant Video 2",
        "Valorant Video 3",
        "Valorant Video 4",
        "Valorant Video 5"
    ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        ZStack{
            Image("ValorantBanner")
                .resizable()
                .clipShape(Rectangle())
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 480)
            VStack{
                VStack{
                    Text("Todos os olhos em")
                        .padding(.trailing, 160)
                        .padding(.top, 150)
                        .foregroundStyle(.white)
                        .font(.system(size: 23))
                    Text("VALORANT")
                        .padding(.trailing, 135)
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Text("Acompanhe as jogadas do último campeonato\n de Valorant e veja quem foi o campeão.")
                        .padding(.leading, 10)
                        .foregroundStyle(.white)
                }
                
                ScrollView([.horizontal], showsIndicators: false){
                    HStack{
                        Text("")
                            .padding(10)
                        HStack{
                            //ForEach que mostra a colecao de imagens
                            ForEach(clip, id: \.self) {
                                imageString in VStack(alignment: .leading){
                                    Image(imageString)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .frame(width: cardWidth, height: cardHeight)
                                    Text(imageString)
                                        .font(.system(size: 18))
                                        .foregroundStyle(.white)
                                        .bold()
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
    }
}

#Preview {
    ClipsView()
}
