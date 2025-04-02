//
//  ViewModel.swift
//  noderedapi desafio10
//
//  Created by Turma02-8 on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var umidades: [umi] = []
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.86:1880/leituraUmidade") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([umi].self, from: data)
                
                DispatchQueue.main.async {
                    self?.umidades = parsed
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}
