//
//  CinzaView.swift
//  desafio05
//
//  Created by Turma02-8 on 21/03/25.
//

import Foundation
import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
            VStack {
                Image(systemName: "paintpalette.fill")
                    .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 200, height: 200)
                          

            }

        }
    }
}

#Preview {
    ContentView()
}
