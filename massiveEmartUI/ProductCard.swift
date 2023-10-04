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
            Text(product.title).padding()
            Image( product.image).resizable().aspectRatio(contentMode: .fit).frame(height: 120)
                .cornerRadius(16)
            Text("$ \(product.price)")
            Text(product.description).padding()
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


