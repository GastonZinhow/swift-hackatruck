//
//  ListaView.swift
//  desafio05
//
//  Created by Turma02-8 on 21/03/25.
//

import Foundation
import SwiftUI

struct ListaView: View {
    var body: some View {
        VStack {
            Text("List")
                .font(.title)
                
            List{
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
            }
            
                

            
            
        }
        .padding()
    }
}

#Preview {
    ListaView()
}
