//
//  DemoView.swift
//  Games+
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct DemoView: View {
    
    private var demo: [String] = [
        "AC: Shadows",
        "Deltarune",
        "Silksong",
        "Avowed",
        "South of Midnight"
    ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        NavigationLink{
            Sub1View()
        } label:{
            HStack{
                Text("Jogue a demo")
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
                    ForEach(demo, id: \.self) {
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
    DemoView()
}
