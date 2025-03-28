//
//  mode1.swift
//  desafio06
//
//  Created by Turma02-8 on 21/03/25.
//

import SwiftUI

struct mode1: View {
    var body: some View {
        
        VStack{
            ZStack{
                Color(.lightGray).ignoresSafeArea()
                Image("retangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                    .background(.pink)
                VStack{
                    Text("Nome: Tiago")
                    Text("Sobrenome: Oliveira")
                }
            }
        }
    }
}

#Preview {
    mode1()
}
