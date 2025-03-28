//
//  ViewModel.swift
//  noderedapi desafio10
//
//  Created by Turma02-8 on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var jogadores: [vava] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/leituraGaston") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([vava].self, from: data)
                
                DispatchQueue.main.async {
                    self?.jogadores = parsed
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}
