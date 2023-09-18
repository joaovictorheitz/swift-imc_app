//
//  MainView.swift
//  IMC
//
//  Created by João Victor de Souza Guedes on 18/09/23.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var weight = ""
    @State private var height = ""
    @State private var IMC = 25.0
    @State private var resultado = "Ideal"
    @State private var img = ""
    @State private var opacity = 0.0
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            
            VStack() {
                Text("Peso (Kg)")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                TextField("Ex:. 75", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .frame(width: 120.0)
            
            Spacer()
            
            VStack(alignment: .center) {
                Text("Altura (m)")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                TextField("Ex.: 1,65", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .frame(width: 120.0)
            
            Spacer()
        }
        .padding()
        
        HStack {
            Button("Calcular") {
                if weight.contains(",") {
                    weight = weight.replacingOccurrences(of: ",", with: ".")
                } else if height.contains(",") {
                    height = height.replacingOccurrences(of: ",", with: ".")
                }
                
                let x = Double(weight)!
                let y = Double(height)!
                
                IMC = x/(y*y)
                
                if IMC < 18.5 {
                    resultado = "Baixo Peso"
                    img = "magreza"
                } else if IMC < 24.9 {
                    resultado = "Eutrofia (Ideal)"
                    img = "ideal"
                } else if IMC >= 25 {
                    resultado = "Sobrepeso"
                    img = "sobre"
                } else {
                    resultado = "Obesidade"
                    img = "obesidade"
                }
                
                opacity = 1
            }
            .padding(12)
            .frame(width:300)
            .background(Color(red: 253/255, green: 254/255, blue: 1/255))
            .cornerRadius(10)
        }
        .padding(.bottom)
        
        ZStack {
            Color.white
            
            VStack {
                Text("Seu Índice de Massa Corporal é:")
                    .foregroundColor(Color.gray)
                    .padding(15)
                
                Text("\(String(format: "%.0f", IMC)): \(resultado)")
                    .fontWeight(.heavy)
                    .font(.title)
                
                Image(img)
                    .resizable(capInsets: EdgeInsets(top: -1.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
            }
        }
        .opacity(opacity)
    }
}
