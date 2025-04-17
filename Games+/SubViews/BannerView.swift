//
//  BannerView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct BannerView: View {
    private var keepPlayingImg: [String] = [
        "SonicBanner",
        "MarioBanner",
        "ResidentEvilBanner",
        "ZeldaBanner",
        "PersonaBanner"
    ]
    
    var body: some View {
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(8)
                
                HStack{
                    //ForEach que mostra a colecao de imagens
                    ForEach(keepPlayingImg, id: \.self) {
                        imageString in ZStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: 350, height: 430)
                                .shadow(radius: 8)
                                //.padding(.leading, 15)
                            Text("Jogue agora no Games+")
                                .padding(.top, 380)
                                .padding()
                                .bold()
                                .foregroundStyle(.white)
                                //.padding(.leading, 15)
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .padding(.trailing, 8)

            
        }
        .scrollTargetBehavior(.viewAligned)
        .padding(.bottom, 15)
        
    }
}

#Preview {
    BannerView()
}
