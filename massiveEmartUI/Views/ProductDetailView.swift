//
//  ProductDetailView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 04/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    
    var product =  misProdductos[0]
    
    @Binding var isProductoPresented : Bool
    var body: some View {
        Text(product.description)
        Image(product.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 120)
        Text(product.price.formatAsDollar())
        Text(product.description)
        //Text("$1.99")
        //Text("Tasty Refreshing cola")
        Button("Add to Cart"){
            shoppingCartViewModel.addToCart(productId: product.id)
            isProductoPresented.toggle()
        }

    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: misProdductos[2], isProductoPresented: .constant(true))
    }
}
