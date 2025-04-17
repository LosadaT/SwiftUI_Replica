//
//  Popular2View.swift
//  Games+
//
//  Created by Aluno Mack on 15/04/25.
//

import SwiftUI

struct Popular2View: View {
    private var popular: [[String]] = [
         ["Doom (2016)", "Action/FPS"],
         ["Super Mario", "Casual"],
         ["The Binding of Isaac","Roguelike"],
         ["Dota 2","MOBA"],
         ["Titanfall 2","FPS"]
     ]
    
    var cardWidth: CGFloat = 183
    var cardHeight: CGFloat = 100
    
    var body: some View {
        NavigationLink{
            Sub1View()
        } label: {
            HStack{
                Text("Mais vendidos no Games+")
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
                        Image("\(popular[0][0])")
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
                        Image("\(popular[1][1])")
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
                                Text("\(popular[1][1])")
                                    .font(.system(size: 15))
                                Text("\(popular[1][1])")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 13))
                            }
                            
                        }
                    }
                    VStack(alignment: .leading){
                        Image("\(popular[2][0])")
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
                        Image("\(popular[3][0])")
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
                        Image("\(popular[4][0])")
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
    Popular2View()
}
