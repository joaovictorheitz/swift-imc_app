//
//  ContentView.swift
//  IMC
//
//  Created by João Victor de Souza Guedes on 16/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack {
                TitleView(title: "Cálculo do IMC", desc:"Descubra seu índice de Massa Corporal")
                
                MainView()
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
