//
//  music.swift
//  desafio07
//
//  Created by Turma02-8 on 24/03/25.
//

import SwiftUI

struct music: View {
    @State var receba: Song

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: receba.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)

                Text(receba.name).foregroundStyle(.white)
                Text(receba.artist).foregroundStyle(.white)
                
                HStack{
                    Image(systemName:"shuffle").resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white)
                    Image(systemName:"backward.end.fill").resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white)
                    Image(systemName:"play.fill").resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white)
                    Image(systemName:"forward.end.fill").resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white)
                    Image(systemName:"repeat").resizable().scaledToFit().frame(width: 50, height: 50).foregroundColor(.white)
                        
                        
                    }
                }
            
                
            }
        }
    }

#Preview{
    music(receba: Song(id: 1, name: "Teste", artist: "teste", capa: "teste"))
}
