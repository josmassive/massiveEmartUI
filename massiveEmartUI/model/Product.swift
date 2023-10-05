//
//  Product.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 24/07/23.
//

import Foundation


struct Product : Hashable{
    var id = UUID().uuidString
    var title:String
    var image:String
    var price:Double
    var description:String
}


let misProdductos = [
        Product(title: "Llamarada Moe", image: "ProductLlamaradaMoe", price: 2.00, description: "la mejor bebida nocturna"),
        Product(title: "Rosquilla de Homero", image: "ProductRosquilla", price: 3.00, description:"super rosquilla de Homero"),
        Product(title: "Krusty Burguer", image: "ProductBurguer", price: 4.00, description: "la deliciosa hamburguesa Kruzty"),
        Product(title: "Cerveza Fudd", image: "ProdcutCervezaFudd", price: 4.00, description: "Cerveza Fudd"),
        Product(title: "Buzz", image: "ProductBuzz", price: 4.00, description: "Buzz"),
        Product(title: "Cangrejo", image: "ProductCangrejo", price: 4.00, description: "Cangrejo"),
        Product(title: "Cereal Crusty", image: "ProductCerealCrusty", price: 4.00, description: "Cereal Crusty"),
        Product(title: "Cerveza Dufff", image: "ProductCervezaDufff", price: 4.00, description: "CervezaDufff"),
        Product(title: "Lache", image: "ProductLache", price: 4.00, description: "Lache"),
        Product(title: "Squishe", image: "ProductSquishe", price: 4.00, description: "Squishe"),
        Product(title: "Tomaco", image: "ProductTomaco", price: 4.00, description: "Tomaco"),
        Product(title: "Pez Globo", image: "ProductPezGlobo", price: 4.00, description: "Pez Globo")
    ]
