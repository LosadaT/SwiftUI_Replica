//
//  SubscriptionView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ZStack{
            Image("ZeldaBanner")
                .resizable()
                .clipShape(Rectangle())
                .frame(width: UIScreen.main.bounds.width, height: 480)
            VStack{
                VStack{
                    Text("Games+")
                        .padding(.top, 220)
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                    Text("Todas as desenvolvedoras.")
                        .foregroundStyle(.white)
                        .font(.system(size: 23))
                        .bold()
                    Text("Todos os jogos.")
                        .foregroundStyle(.white)
                        .font(.system(size: 23))
                        .bold()
                    Text("Sem interrupções.")
                        .foregroundStyle(.white)
                        .font(.system(size: 23))
                        .bold()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 220, height: 50)
                            .foregroundColor(.white)
                            .padding(10)
                        Text("Assinar")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundStyle(.black)
                    }
                    Text("Explorar")
                        .foregroundStyle(.white)
                        .font(.system(size: 15))
                }
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    SubscriptionView()
}
