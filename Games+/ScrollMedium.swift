//
//  KeepPlayingView.swift
//  Games+
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct ScrollMedium: View {
     var keepPlayingImg: [String] = [
        "Hades",
        "The Elder Scrolls V: Skyrim",
        "Stardew Valley",
        "Avowed",
        "Minecraft"
    ]
    //TODO: passar a view como variavel
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    var categoryTitle: String
    var isLink: Bool
    var hasSubText: Bool
    var description: String
    var games: [String]
    
    
    var body: some View {
        VStack(alignment: .leading){
            if isLink{
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
            }
        else{
            HStack{
                Text(categoryTitle)
                    .padding(.leading, 25)
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                Spacer()
            }
        }
        Text(description)
            .multilineTextAlignment(.leading)
            .padding(.leading, 25)
            
    }
        
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
                                .frame(width: keepPlayingWidth, height: keepPlayingHeight)
                            if hasSubText{
                                Text(imageString)
                                    .font(.system(size: 15))
                                Text("Continuar")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
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
    ScrollMedium(categoryTitle: "Teste", isLink: true, hasSubText: true,  description: "Teste", games: [
        "Hades 2",
        "The Elder Scrolls V: Skyrim",
        "Stardew Valley",
        "Avowed",
        "Minecraft"
    ])
}
