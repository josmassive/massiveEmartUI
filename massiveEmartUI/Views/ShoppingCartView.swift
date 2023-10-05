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
        
            Text("Shopping Cart")
                .font(AppFont.title1.bold())
                .padding()
            
            List {
                ForEach(Array(shoppingCartViewModel.shoppingCart.keys), id: \.self){ key in ShoppingCartCell(product: shoppingCartViewModel.catalog[key]!)
                    
                }.onDelete(perform:delete)
            }
        }
        
        Spacer()
        VStack(alignment: .leading) {
            
        
            HStack{
                Text("Subtotal")
                Text(shoppingCartViewModel.subtotal.formatAsDollar())
                    .font(AppFont.body())
            }
            
            HStack{
                Text("Taxes")
                    .font(AppFont.body())
                Text((shoppingCartViewModel.subtotal * shoppingCartViewModel.taxrate).formatAsDollar())
                    .font(AppFont.body())
            }
            Text("Total")
                .font(AppFont.body())
            Text((shoppingCartViewModel.subtotal * (1.0 + shoppingCartViewModel.taxrate)).formatAsDollar())
                .font(AppFont.body())
        }
        HStack{
            Spacer()
            Button("checkout"){}
                .frame(width: 120, height: 45)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(25)
                .padding()
                .font(AppFont.body.bold())
                .frame(alignment: .center)
            Spacer()
        }
    }
}

struct ShoppingVartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
