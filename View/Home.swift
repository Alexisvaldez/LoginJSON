//
//  Home.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login: PostViewModel  // Asegurando que `login` está disponible
    @StateObject var json = Modelo1ViewModel()
    var body: some View {
        NavigationView {
            if json.datosModelo.isEmpty{
                ProgressView()
            } else {
                List(json.datosModelo, id:\.id){ item in
                    VStack (alignment:.leading){
                        Text(item.name)
                        Text (item.email)
                        Text (item.username)
                        Text (item.address.geo.lat)
                    }
                }
                .navigationTitle("JSON")
                .navigationBarItems(leading: Button(action: {
                    UserDefaults.standard.removeObject(forKey: "sesion")
                    login.authenticated = 0
                }) {
                    Text("Salir")
                }, trailing:
                                        NavigationLink(destination: Home2()){
                                        Text ("siguiente")
                }
                )
            }
        }
    }}

