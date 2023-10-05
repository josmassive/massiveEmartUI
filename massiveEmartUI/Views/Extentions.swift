//
//  Extentions.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 04/10/23.
//

import Foundation

extension Double{
    func formatAsDollar()->String{
        return "$\(String(format: "%.2f", self))"
    }
}
