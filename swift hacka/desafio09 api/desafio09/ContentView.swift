//
//  ContentView.swift
//  desafio09
//
//  Created by Turma02-8 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            Color(.red).ignoresSafeArea()
            VStack {
                Text("GRIFINORIA GOATS").foregroundStyle(.white).font(.system(size: 40))
                Spacer()
                ScrollView{
                    VStack{
                            ForEach(viewModel.personagens){
                                e in HStack{ Text(e.name!).foregroundStyle(.white).font(.system(size: 30))
                                    Spacer()
                                    AsyncImage(url: URL(string: e.image!)) { image in image.resizable() } placeholder: {  ProgressView() }.frame(width: 150, height: 150).cornerRadius(100)
                                }
                            }
                    }.padding()
                }
            }
            .onAppear(){
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
