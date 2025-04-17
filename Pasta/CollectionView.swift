//
//  CollectionView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("A Biblioteca Está Vazia")
                    .font(.title2)
                    .bold()
                Text("Os jogos que você comprar na Loja aparecerão aqui.")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
            }
            .navigationBarTitle("Biblioteca")
        }
        
    }
}

#Preview {
    CollectionView()
}
