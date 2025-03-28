//
//  ContentView.swift
//  desafio08
//
//  Created by Turma02-8 on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
    //let coordenada: CLLocationCoordinate2D
}

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -30, longitude: -50),
            span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
        )
    )
    @State var sheet = false
    var body: some View {
        @State var local = [Location(nome: "Belo Horizonte", foto: "https://t3.ftcdn.net/jpg/05/64/03/34/360_F_564033423_cQaeD5cypYd5sNQOacJdTmq1yredcv9R.jpg", descricao: "BH De cria", latitude: -19.912998, longitude: -43.940933),
            Location(nome: "Caceres", foto: "https://www.spain.info/export/sites/segtur/.content/imagenes/cabeceras-grandes/extremadura/caceres-plaza-santa-maria-s573322420-c-lepneva-irina-shutterstock.jpg", descricao: "Cidade da dudinha", latitude: -16.0669, longitude: -57.6868 ),
            Location(nome: "Belem", foto: "https://media.gettyimages.com/id/624250296/pt/foto/docks-station-in-bel%C3%A9m-par%C3%A1-state-brazil.jpg?s=612x612&w=gi&k=20&c=NOnDuVEhKL__wS9ToNbm2AY828VtAw5TtoL1urVHK0o=", descricao: "Vou tomar um tacaca", latitude: -1.45502, longitude: -48.5024),
            Location(nome: "RJ", foto: "https://www.zapimoveis.com.br/blog/wp-content/uploads/2024/01/zona-norte-rio-de-janeiro.jpg", descricao: "Belezas naturais e cristo redentor", latitude: -22.9035, longitude: -43.2096 )
        ]
        @State var selected: String = ""
        ZStack {
            
            Map(position: $position){
                ForEach(local, id: \.self){e in
                    
                    Annotation(e.nome, coordinate: CLLocationCoordinate2D(latitude: e.latitude, longitude: e.longitude)){
                        ZStack {
                            Button{
                                sheet.toggle()
                            }label:{
                                Image(systemName: "mappin")
                                
                            }.sheet(isPresented: $sheet){
                                ZStack{
                                    Color(.lightGray).ignoresSafeArea()
                                    VStack{
                                        Text(e.nome)
                                        AsyncImage(url: URL(string: e.foto)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 300, height: 300)
                                        Text(e.descricao)
                                    }
                                }
                            }
                                
                            
                                
                            }
                    }
                    //mappin
                }
            }
            VStack{
                Picker(selection: $selected, label: Text("Cidades")) {
                    ForEach(local, id: \.self) {la in
                        Text(la.nome)
                    }
                }.background(.white).onChange(of: selected){
                    oldValue, newValue in print("Voce selecionou \(selected)" )
                }
                
                Spacer()
                Text("Voce selecionou \(selected)" ).background(.white)
            }.padding()
            
        }
        
    }
}

#Preview {
    ContentView()
}
