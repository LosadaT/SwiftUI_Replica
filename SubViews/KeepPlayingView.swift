//
//  KeepPlayingView.swift
//  Games+
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct KeepPlayingView: View {
    private var keepPlayingImg: [String] = [
        "Hades",
        "The Elder Scrolls V: Skyrim",
        "Stardew Valley",
        "Avowed",
        "Minecraft"
    ]
    
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    
    var body: some View {
        NavigationLink{
            Sub1View()
        } label:{
            HStack{
                Text("Continue Jogando")
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
                            Text(imageString)
                            //.foregroundStyle(.texto)
                                .font(.system(size: 15))
                            Text("Continuar")
                                .foregroundStyle(.gray)
                                .font(.system(size: 13))
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
    KeepPlayingView()
}
