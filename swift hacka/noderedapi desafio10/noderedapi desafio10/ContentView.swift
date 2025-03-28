//
//  ContentView.swift
//  noderedapi desafio10
//
//  Created by Turma02-8 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Text("VALORANT BRASIL 2025").font(.system(size: 30)).foregroundStyle(.white)
                Spacer()
                    
                ScrollView(.vertical){
                    VStack{
                        Text("MIBR").foregroundStyle(.white).font(.system(size: 30))
                        ForEach(viewModel.jogadores, id: \.self){
                            e in HStack{
                                VStack{
                                    Text(e.jogador!).foregroundStyle(.white).font(.system(size: 30))
                                    Text(e.funcao!).foregroundStyle(.white).font(.system(size: 15))
                                }.padding()
                                Spacer()
                                AsyncImage(url: URL(string: e.foto!)) { image in image.resizable() } placeholder: {  ProgressView() }.frame(width: 100, height: 100).cornerRadius(100).padding()
                                Text(e.time!).foregroundStyle(.white).font(.system(size: 15)).padding()
                            }
                        }
                    }.background(.black)
                }
            }.padding()
        }.onAppear(){
            viewModel.fetch()
        }

        
    }
}

#Preview {
    ContentView()
}
