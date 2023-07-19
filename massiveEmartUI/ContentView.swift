//
//  ContentView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 18/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sprinke Donut").padding()
            Image( "ProductRosquilla").resizable().aspectRatio(contentMode: .fit).frame(height: 120)
                .cornerRadius(16)
            Text("2.99")
            Text("La dona favorita de homero").padding()
        }
        .background(.yellow)
        //.border(.black, width:4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
            .stroke(.black, lineWidth: 5)
        )
        .cornerRadius(12)
        .shadow(radius: 20)
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
