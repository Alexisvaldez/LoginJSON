//
//  Home2.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import SwiftUI

struct Home2: View {
    @StateObject var json2 = Modelo2ViewModel()

    var body: some View {
        if json2.datosModelo.data.isEmpty{
            ProgressView()
        }else {
            List (json2.datosModelo.data, id:\.id){item in
                NavigationLink(destination: DetalleView(id:item.id)){
                    HStack {
                        Image (systemName: "person.fit")
                            .data(url: URL(string: item.avatar)!)
                            .frame(width:80, height: 80)
                            .clipped()
                            .clipShape(Circle())
                        
                        
                        VStack(alignment:.leading){
                            Text (item.first_name).font(.title)
                            Text (item.email).font(.subheadline)
                        }
                    }.navigationBarTitle("json con imagen")
                }
            }}
    }
}
extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data ( contentsOf: url){
            return Image (uiImage: UIImage(data: data)!).resizable ()
        }
        return self
            .resizable()
    }
}
