//
//  PriceView.swift
//  Games+
//
//  Created by Aluno Mack on 16/04/25.
//

import SwiftUI

struct PriceView: View {
    private var prices: [String] = [
        "R$ 4,90",
        "R$ 9,90",
        "R$ 14,90",
        "R$ 24,90",
        "R$ 49,90"
    ]
    
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    
    var body: some View {
            HStack{
                Text("Jogos por preço")
                    .padding(.leading, 25)
                    .foregroundStyle(.texto)
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
                    ForEach(prices, id: \.self) {
                        textString in ZStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: keepPlayingWidth, height: keepPlayingHeight)
                                .foregroundColor(.main)
                            Text("Compre por")
                                .foregroundColor(Color(hue: 0.512, saturation: 0.356, brightness: 0.916))
                                .bold()
                                .font(.title3)
                                .foregroundStyle(.white)
                                .padding(.top, 40)
                                .padding(.leading, 20.0)
                            Text(textString)
                                .bold()
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding(.top, 90)
                                .padding(.leading, 20)
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
    PriceView()
}
