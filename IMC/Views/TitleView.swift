//
//  TitleView.swift
//  IMC
//
//  Created by João Victor de Souza Guedes on 17/09/23.
//

import SwiftUI

struct TitleView: View {
    let title: String
    let desc: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .padding(20)
        
        Text(desc)
            .fontWeight(.thin)
            .foregroundColor(Color.white)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Lorem Ipsum", desc: "Lorem Ipsum")
    }
}
