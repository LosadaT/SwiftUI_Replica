//
//  GenreView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct ScrollGenre: View {
     var keepPlayingImg: [String] = [
        "RPG",
        "Rhythm",
        "Casual",
        "Sports",
        "MOBA"
    ]
    
    var keepPlayingWidth: CGFloat = 275
    var keepPlayingHeight: CGFloat = 150
    var genre: [String]
    
    var body: some View {
        NavigationLink{
            Sub2View()
        } label: {
            HStack{
                Text("Explore por gênero")
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
                    
                    ForEach(genre, id: \.self) {
                        imageString in ZStack(alignment: .leading){
                            Image(imageString)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(width: keepPlayingWidth, height: keepPlayingHeight)
                            Text(imageString)
                                .bold()
                                .font(.title)
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
        .padding(.bottom, 15)
    }
}

#Preview {
    ScrollGenre(genre: [
        "RPG",
        "Rhythm",
        "Casual",
        "Sports",
        "MOBA"
    ])
}
