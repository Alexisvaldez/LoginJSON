//
//  DetalleViewModel.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import Foundation

class DetalleViewModel: ObservableObject {
    @Published var firs_name = ""
    @Published var email = ""
    @Published var avatar = ""
    
    
    func fetch (id: Int){
        guard let url = URL(string: "https://reqres.in/api/users/\(id)") else {return}
        URLSession.shared.dataTask(with: url){data,responde,error in
        
        
        guard let data = data else {return}
        do {
            let json = try JSONDecoder().decode(User.self, from: data)
            DispatchQueue.main.async {
                self.firs_name = json.data.first_name
                self.email = json.data.email
                self.avatar = json.data.avatar
            }
        }catch let error as NSError {
            print ("error en el json", error.localizedDescription)
        }
        
        
       
    }.resume()
    }
}
