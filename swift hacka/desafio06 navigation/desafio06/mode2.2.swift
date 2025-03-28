//
//  mode2.2.swift
//  desafio06
//
//  Created by Turma02-8 on 21/03/25.
//

import SwiftUI

struct mode2_2: View {
    @State var recebe: String = ""
    
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
                    Text("Volte! \(recebe)")
                }
            }
        }
    }
}

#Preview {
    mode2_2()
}
