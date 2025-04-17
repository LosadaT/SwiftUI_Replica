//
//  PublisherView.swift
//  Games+
//
//  Created by Aluno Mack on 11/04/25.
//

import SwiftUI

struct PublisherView: View {
    private var publisher: [String] = [
        "CD Project Red",
        "Ubisoft",
        "Nintendo",
        "EA",
        "Sega"
        
    ]
    
    private var publisher2: [String] = [
        "TheWitcherBanner",
        "ACBanner",
        "MarioBanner",
        "NfSBanner",
        "SonicBanner"
    ]
    
    var publisherCardWidth: CGFloat = 110
    var publisherCardHeight: CGFloat = 160
    
    var body: some View {
        HStack{
            Text("Explore desenvolvedores")
                .padding(.leading, 25)
                .foregroundStyle(.texto)
                .font(.system(size: 23))
                .fontWeight(.bold)
            Text(" ")
                .bold()
                .foregroundColor(.gray)
                .font(.system(size: 20))
            Spacer()
        }
        ScrollView([.horizontal], showsIndicators: false){
            HStack{
                Text("")
                    .padding(10)
                ZStack{
                    HStack{
                        ForEach(publisher2, id: \.self) {
                            imageString in ZStack(alignment: .leading){
                                Image(imageString)
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .frame(width: publisherCardWidth, height: publisherCardHeight)
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.main)
                                    .frame(width: publisherCardWidth, height: 76)
                                    .opacity(0.95)
                                    .offset(y: -publisherCardHeight/12)
                                    .clipped()
                                    .offset(y: publisherCardHeight/2.9)
                                
                            }
                        }
                    }
                    .scrollTargetLayout()

                    HStack{
                        //Fazer um for each seguido de um for each, uma para cada imagem. o segundo so com o png. demtro de um zstack
                        ForEach(publisher, id: \.self) {
                            imageString in ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: publisherCardWidth, height: publisherCardHeight)
                                    .foregroundStyle(.clear)
                                
                                Image(imageString)
                                    .resizable()
                                    .frame(width: 60, height: 50)
                                    .padding(.top, 93)
                                    .padding(.leading, 27)
                                    
                                
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

#Preview {
    PublisherView()
}
