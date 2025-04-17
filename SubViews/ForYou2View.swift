//
//  ForYou2View.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct ForYou2View: View {
    private var forYou: [String] = [
        "Oxygen Not Included",
        "Far Cry 5",
        "Mario",
        "Silksong",
        "Baldurs Gate 3"
    ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        VStack{
            NavigationLink{
                Sub1View()
            } label: {
                HStack{
                    Text("Para você")
                        .padding(.leading, 15)
                        .foregroundStyle(.texto)
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                    Image(systemName: "chevron.forward")
                        .bold()
                        .foregroundColor(.gray)
                        .font(.system(size: 20))
                    Spacer()
                }
            }
            Text("Curta recomendações personalizadas inspiradas no que já jogou.")
                .multilineTextAlignment(.leading)
                .padding(.trailing, 50)
                
        }
        .padding(.leading, 15)
        .padding(.trailing, 10)
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(10)
                HStack{
                    //ForEach que mostra a colecao de imagens
                    ForEach(forYou, id: \.self) {
                        imageString in VStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: cardWidth, height: cardHeight)
                            Text(imageString)
                                .font(.system(size: 14))
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
    ForYou2View()
}
