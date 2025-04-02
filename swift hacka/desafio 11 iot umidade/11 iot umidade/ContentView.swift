//
//  ContentView.swift
//  11 iot umidade
//
//  Created by Turma02-8 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Umidade do Ar").foregroundStyle(.black).font(.system(size: 30))
                    Spacer()
                    VStack{
                        if let ultimo = viewModel.umidades.last {
                            HStack {
                                Image(systemName: "humidity.fill")
                                    .imageScale(.large)
                                    .foregroundStyle(.tint).font(.system(size: 30))

                                Text(ultimo.umidade ?? "N/A").foregroundStyle(.black).font(.system(size: 30))
                            }
                        }
                        
                    }
                    
                }
            }
        }
        .onAppear(){
            viewModel.fetch()
        }
        
    }
}

#Preview {
    ContentView()
}
