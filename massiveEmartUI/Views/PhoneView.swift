//
//  PhoneView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct PhoneView: View {
    @State private var showingShoppingCart = false
    
    let heights = stride(from: 0.6, through:1.0, by: 0.1).map{
        PresentationDetent.fraction($0)
    }
    var body: some View {
        VStack{
            Image(systemName: "cart.fill").onTapGesture {
                showingShoppingCart.toggle()
            }
            ProductListView()
        }.sheet(isPresented: $showingShoppingCart){
            ShoppingCartView()
                .presentationDetents(Set(heights))
        }
    }
}

#Preview {
    PhoneView()
}
