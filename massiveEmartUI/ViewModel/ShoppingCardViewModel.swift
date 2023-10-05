//
//  ShoppingCartViewModel.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 04/10/23.
//

import Foundation

class ShoppingCardViewModel : ObservableObject{
    
    static var shared = ShoppingCardViewModel()
    @Published var catalog : [String: Product] = [:]
    @Published var shoppingCart: [String:Int] = [:]
    @Published var subtotal:Double = 0.00
    @Published var taxrate: Double = 0.16
    @Published var selectedItem: Product? = nil
    
    init(){
        for product in misProdductos{
            catalog[product.id] = product
        }
    }
    
    func addToCart(productId: String){
        if let _ = shoppingCart[productId]{
            shoppingCart[productId]! += 1
        }else{
            shoppingCart[productId] = 1
        }
        calculateSuBTotal()
    }
    
    func removeFromCart(productId: String){
        if shoppingCart[productId] != nil {
            shoppingCart.removeValue(forKey: productId)
        }
        calculateSuBTotal()
    }
    
    func calculateSuBTotal(){
        var total = 0.0
        for id in shoppingCart.keys {
            let catalogItem = catalog[id]
            if catalogItem != nil {
                total += Double(catalogItem!.price) * Double(shoppingCart[id]!)
            }
        }
        subtotal = total
    }
        
    
}
