//
//  DemoView.swift
//  Games+
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct ScrollSmall: View {
    
    let categoryTitle: String
    let games: [String]
    let description: String
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100

    var body: some View {
        VStack(alignment: .leading){
            NavigationLink{
                Sub1View()
            } label:{
                HStack{
                    Text(categoryTitle)
                        .padding(.leading, 25)
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
            Text(description)
                .multilineTextAlignment(.leading)
                .padding(.leading, 25)
        }
        .padding(.trailing, 10)
        
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(10)
                HStack{
                    ForEach(games, id: \.self) {
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
    ScrollSmall(categoryTitle: "Jogue a demo", games: ["AC: Shadows", "Sonic", "Mario"], description: "")
}

