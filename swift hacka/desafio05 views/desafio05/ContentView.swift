//
//  ContentView.swift
//  desafio05
//
//  Created by Turma02-8 on 21/03/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            AzulView()
                .tabItem{
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListaView()
                .tabItem{
                    Label("Cinza", systemImage: "list.bullet")
                }

        }
        }
}

#Preview {
    ContentView()
}
