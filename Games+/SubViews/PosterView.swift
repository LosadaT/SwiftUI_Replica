//
//  PosterView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct PosterView: View {
    private var poster: [String] = [
        "PersonaBanner",
        "HadesBanner",
        "MarioBanner",
        "SonicBanner",
        "ResidentEvilBanner"
    ]
    var mainCardWidth: CGFloat = 430
    var mainCardHeight: CGFloat = 645
    
    var body: some View {
        ZStack{
            TabView{
                ForEach(poster, id: \.self) {
                    imageString in VStack(alignment: .leading){
                        Image(imageString)
                            .resizable()
                            .clipShape(Rectangle())
                            .frame(width: UIScreen.main.bounds.width, height: mainCardHeight)
                            .overlay(
                                LinearGradient(gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color(white: 0, opacity: 0),
                                                  location: 0.6),
                                    Gradient.Stop(color: Color(white: 0, opacity: 0.7),
                                                  location: 0.8),
                                ]), startPoint: .top, endPoint: .bottom)
                            )
                            .padding()
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))

            Text("Descubra os melhores jogos no Games+")
                .padding(.top, 430.0)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.title2)
                .bold()
            
        }
        .frame(width: UIScreen.main.bounds.width, height: mainCardHeight)
        
        
        
    }
    
}


#Preview {
    PosterView()
}
