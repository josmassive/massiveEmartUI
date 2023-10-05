//
//  ContentView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 18/07/23.
//

import SwiftUI

struct ProductCard: View {
    
    var product : Product
    
    var body: some View {
        VStack {
            Text(product.title)
                .font(AppFont.title2.bold())
                .multilineTextAlignment(.center)
                .padding()
            Image( product.image).resizable().aspectRatio(contentMode: .fit).frame(height: 120)
                .cornerRadius(16)
            Text("$ \(product.price.formatAsDollar())")
                .font(AppFont.body().bold())
            Text(product.description)
                .font(AppFont.caption1)
                .multilineTextAlignment(.center)
                .padding()
        }
        .background(.blue)
        //.border(.black, width:4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
            .stroke(.black, lineWidth: 5)
        )
        .cornerRadius(12)
        .shadow(radius: 20)
        
        .padding()
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: misProdductos[0])
    }
}


