//
//  mode2.swift
//  desafio06
//
//  Created by Turma02-8 on 21/03/25.
//

import SwiftUI

struct mode2: View {
    @State var name: String = ""
    var body: some View {
        ZStack{
            
            Color(.lightGray).ignoresSafeArea()
            Image("retangle")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .background(.pink)
            VStack{
                TextField("Insira seu nome:", text:$name).multilineTextAlignment(.center).background(.white)
                    .frame(width: 200)
                Text("Ola, \(name)!")
                
                NavigationLink(destination: mode2_2(recebe: name)){
                    Text("mode2_2")
                    
                }
            }
        }
    }
}

#Preview {
    mode2()
}
