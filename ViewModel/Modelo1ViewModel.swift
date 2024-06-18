//
//  Modelo1ViewModel.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import Foundation

class Modelo1ViewModel: ObservableObject {
    @Published var datosModelo : [Modelo1] = []
    
    
    init (){
        fetch()
    }
    
    func fetch (){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        URLSession.shared.dataTask(with: url){data,responde,error in
        
        
        guard let data = data else {return}
        do {
            let json = try JSONDecoder().decode([Modelo1].self, from: data)
            DispatchQueue.main.async {
                self.datosModelo = json
            }
        }catch let error as NSError {
            print ("error en el json", error.localizedDescription)
        }
        
        
       
    }.resume()
    }
}
