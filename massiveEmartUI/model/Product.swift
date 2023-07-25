//
//  Product.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 24/07/23.
//

import Foundation


struct Product : Hashable{
    var title:String
    var image:String
    var price:Double
    var description:String
}


let misProdductos = [
        Product(title: "Llamarada Moe", image: "ProductLlamaradaMoe", price: 2.00, description: "la mejor bebida nocturna"),
        Product(title: "Rosquilla de Homero", image: "ProductRosquilla", price: 3.00, description:"siper rosquilla de Homero"),
        Product(title: "Krusty Burguer", image: "ProductBurguer", price: 4.00, description: "la deliciosa hamburguesa Kruzty")
    ]
