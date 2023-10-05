//
//  ShoppingCartView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct ShoppingCartView: View {
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    private func delete(at offsets: IndexSet){
        let items = Array(shoppingCartViewModel.shoppingCart.keys)
        let index = Int(offsets.first!.description)
        shoppingCartViewModel.removeFromCart(productId: items[index!])
    }
    var body: some View {
        VStack{
            List {
                ForEach(Array(shoppingCartViewModel.shoppingCart.keys), id: \.self){ key in ShoppingCartCell(product: shoppingCartViewModel.catalog[key]!)
                    
                }.onDelete(perform:delete)
            }
            Spacer()
            VStack{
                Text("Subtotal")
                Text("\(shoppingCartViewModel.subtotal)")
                
                Text("Taxes")
                Text("\(shoppingCartViewModel.subtotal * shoppingCartViewModel.taxrate)")
                Text("Total")
                Text("\(shoppingCartViewModel.subtotal * (1.0 + shoppingCartViewModel.taxrate))")
            }
            Button("checkout"){}
        
        }
        
    }
}

struct ShoppingVartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
