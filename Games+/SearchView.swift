//
//  SearchView.swift
//  Games+
//
//  Created by Aluno Mack on 14/04/25.
//

import SwiftUI

struct SearchView: View {

    @State var search: String = ""
   
    
    var body: some View {
        NavigationStack{
            Sub2View()
            .searchable(text: $search, prompt: "Jogos, Distribuidoras e mais")
            .navigationBarTitle("Buscar")

        }
    }
}

#Preview {
    SearchView()
}
