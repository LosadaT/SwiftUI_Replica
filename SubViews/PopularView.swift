//
//  PopularView.swift
//  Games+
//
//  Created by Aluno Mack on 09/04/25.
//

import SwiftUI

struct PopularView: View {
    
    private var popular: [[String]] = [
         ["EAFC 25", "Esportes"],
         ["The Elder Scrolls V: Skyrim", "RPG"],
         ["Baldurs Gate 3","RPG"],
         ["League of Legends","MOBA"],
         ["Valorant","FPS"]
     ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        NavigationLink{
            Sub1View()
        } label:{
            HStack{
                Text("Mais populares no Games+")
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
                    VStack(alignment: .leading){
                        Image("EAFC 25")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: cardWidth, height: cardHeight)
                        
                        HStack{
                            Text("1")
                                .padding(.leading, 5)
                                .font(.system(size: 35))
                                .bold()
                                .foregroundStyle(.gray)
                                .padding(-2)
                            VStack(alignment: .leading){
                                Text("\(popular[0][0])")
                                    .font(.system(size: 15))
                                Text("\(popular[0][1])")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
                            
                        }
                    }
                    VStack(alignment: .leading){
                        Image("The Elder Scrolls V: Skyrim")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: cardWidth, height: cardHeight)
                        
                        HStack{
                            Text("2")
                                .padding(.leading, 5)
                                .font(.system(size: 35))
                                .bold()
                                .foregroundStyle(.gray)
                                .padding(-2)
                            VStack(alignment: .leading){
                                Text("The Elder Scrolls")
                                    .font(.system(size: 15))
                                Text("\(popular[1][1])")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
                            
                        }
                    }
                    VStack(alignment: .leading){
                        Image("Baldurs Gate 3")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: cardWidth, height: cardHeight)
                        HStack{
                            Text("3")
                                .padding(.leading, 5)
                                .font(.system(size: 35))
                                .bold()
                                .padding(-2)
                                .foregroundStyle(.gray)
                            VStack(alignment: .leading){
                                Text("\(popular[2][0])")
                                    .font(.system(size: 15))
                                Text("\(popular[2][1])")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
                            
                        }
                    }
                    VStack(alignment: .leading){
                        Image("League of Legends")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: cardWidth, height: cardHeight)
                        HStack{
                            Text("4")
                                .padding(.leading, 5)
                                .font(.system(size: 35))
                                .bold()
                                .padding(-2)
                                .foregroundStyle(.gray)
                            VStack(alignment: .leading){
                                Text("\(popular[3][0])")
                                    .font(.system(size: 15))
                                Text("\(popular[3][1])")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
                            
                        }
                    }
                    VStack(alignment: .leading){
                        Image("Valorant")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .frame(width: cardWidth, height: cardHeight)
                        HStack{
                            Text("5")
                                .padding(.leading, 5)
                                .font(.system(size: 35))
                                .bold()
                                .padding(-2)
                                .foregroundStyle(.gray)
                            VStack(alignment: .leading){
                                Text("\(popular[4][0])")
                                    .font(.system(size: 15))
                                Text("\(popular[4][1])")
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
    PopularView()
}
