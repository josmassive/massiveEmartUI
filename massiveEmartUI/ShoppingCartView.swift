//
//  ShoppingCartView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct ShoppingCartView: View {
    var body: some View {
        VStack{
            List {
                ShoppingCartCell()
                ShoppingCartCell()
                ShoppingCartCell()
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
