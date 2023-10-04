//
//  ShoppingCartCell.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct ShoppingCartCell: View {
    var body: some View {
        HStack{
            Image("buzzCola")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
                .cornerRadius(15)
            Text("buzz cola")
            Text("3 @ $1.99")
            Spacer()
            Text("%5.97")
        }
    }
}

#Preview {
    ShoppingCartCell()
}
