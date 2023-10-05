//
//  productListView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 23/07/23.
//

import SwiftUI

struct ProductListView: View {
    
    @State var productSelected: Bool = false
    @State var selectedProduct: Product = misProdductos[0]
    
    let layout = [ GridItem(.adaptive(minimum: 150, maximum: 300), spacing: 4, alignment: .center)
    ]
    var body: some View{
        ScrollView{
            LazyVGrid(columns: layout){
//                ProductCard(product: products[0])
//                ProductCard(product: products[1])
//                ProductCard(product: products[2])
                
                ForEach(misProdductos, id: \.self){
                    product in ProductCard(product: product).onTapGesture {
                        selectedProduct = product
                        productSelected.toggle()
                    }
                }
                
            }
        }.sheet(isPresented: $productSelected){
            ProductDetailView(product: selectedProduct)
        }
    }
}

struct ProductListView_Previews : PreviewProvider{
    static var previews: some View {
        ProductListView()
    }
}
