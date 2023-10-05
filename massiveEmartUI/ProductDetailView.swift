//
//  ProductDetailView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 04/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product =  misProdductos[0]
    
    var body: some View {
        Text(product.description)
        Image(product.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 120)
        Text("\(product.price)")
        Text(product.description)
        //Text("$1.99")
        //Text("Tasty Refreshing cola")
        Button("Add to Cart"){}

    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: misProdductos[2])
    }
}
