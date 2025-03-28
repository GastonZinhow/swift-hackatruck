//
//  ContentView.swift
//  desafio07
//
//  Created by Turma02-8 on 24/03/25.
//

import SwiftUI

struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    var body: some View {
        @State var array = [
            Song(id: 1, name: "Eminence Front", artist: "The Who", capa: "https://i1.sndcdn.com/artworks-MkUqX3tmFAbH-0-t500x500.jpg"),
            Song(id: 2, name: "Invisible", artist: "Duran duran", capa: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2021_20/1719478/duran-duran-album-kb-inline-210519.jpg")
        ]
        NavigationStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                
                
                VStack {
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    
                    HStack{
                        Image("truck").resizable().frame(width: 25, height: 25)
                        Text("HackaSong").foregroundStyle(.white)
                        Spacer()
                    }
                    // FOREACH
                    ScrollView(.vertical){
                        VStack{
                            
                            ForEach(array){
                                e in
                                HStack{
                                    AsyncImage(url: URL(string: e.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack{
                                        Text(e.name).foregroundStyle(.white).font(.system(size: 25))
                                        Text(e.artist).foregroundStyle(.white).font(.system(size: 15))
                                    }
                                    Spacer()
                                    ZStack{
                                        
                                        NavigationLink(destination: music(receba: e)){
                                            Image(systemName: "ellipsis").foregroundStyle(.white)
                                        }                                }
                                    
                                }
                                
                            }
                        }
                    }
                    HStack{
                        Text("SUGERIDOS").foregroundStyle(.white).font(.system(size: 30))
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            VStack{
                                AsyncImage(url: URL(string: "https://img.myloview.com.br/posters/nerd-face-emoji-clever-emoticon-with-glasses-geek-or-student-700-192037364.jpg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 200, height: 200)
                                Text("1 - ONE").foregroundStyle(.white).font(.system(size: 30))
                            }
                            VStack{
                                AsyncImage(url: URL(string: "https://img.myloview.com.br/posters/nerd-face-emoji-clever-emoticon-with-glasses-geek-or-student-700-192037364.jpg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 200, height: 200)
                                Text("1 - ONE").foregroundStyle(.white).font(.system(size: 30))
                            }
                            
                            
                            
                        }
                    }
                    
                    
                }
                
            }
        }
    }
}
#Preview {
    ContentView()
}
