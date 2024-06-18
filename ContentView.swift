//
//  ContentView.swift
//  JSON
//
//  Created by user on 25/04/24.
//

import SwiftUI



struct ContentView: View {
    @EnvironmentObject var login : PostViewModel
    var body: some View {
        Group {
            if login.authenticated == 0 {
                Login ()
            }else if login.authenticated == 1 {
                Home ()
            }else if login.authenticated == 2 {
                
                
                VStack {
                    Text ("Usuario y/o contrasenas incorrectas")
                    Button(action: {
                        login.authenticated = 0
                    }){
                        Text ("Regrear")
                    }
                }
            }
            
        }
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
