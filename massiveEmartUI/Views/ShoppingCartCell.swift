//
//  ShoppingCartCell.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct ShoppingCartCell: View {
    
    @ObservedObject var shoppingCartViewModel = ShoppingCardViewModel.shared
    var product : Product
    var body: some View {
        HStack{
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
                .cornerRadius(15)
            Text(product.title)
                .font(AppFont.body().bold())
            Text("\(shoppingCartViewModel.shoppingCart[product.id] ?? 1)" + "@" + product.price.formatAsDollar())
                .font(AppFont.body().italic())
            Spacer()
            Text((product.price * Double(shoppingCartViewModel.shoppingCart[product.id] ?? 1)).formatAsDollar())
                .font(AppFont.body().bold())
        }
    }
}

struct ShoppingCartCell_Previews: PreviewProvider {
    static var previews: some View{
        ShoppingCartCell(product: misProdductos[0])
    }
    
}
