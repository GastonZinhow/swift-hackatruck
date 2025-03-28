//
//  ContentView.swift
//  desafio06
//
//  Created by Turma02-8 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
            NavigationStack{
                ZStack{
                    Color(.darkGray).ignoresSafeArea()
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                    Spacer()
                    ZStack{
                        Image("retangle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 100)
                            .background(.pink)
                        NavigationLink(destination: mode1()){
                            Text("mode1")
                                .background(.white)
                        }
                    }
                    
                    ZStack{
                        Image("retangle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 100)
                            .background(.pink)
                        NavigationLink(destination: mode2()){
                            Text("mode2")
                                .background(.white)
                        }
                    }
                    ZStack{
                        Image("retangle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 100)
                            .background(.pink)
                        NavigationLink(destination: mode2()){
                            Text("mode3")
                                .background(.white)
                        }
                    }
                    Spacer()
                    Spacer()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
