//
//  HomeView.swift
//  massiveEmartUI
//
//  Created by salvador.huerta on 03/10/23.
//

import SwiftUI

struct HomeView: View {
    private var idiom: UIUserInterfaceIdiom{
        UIDevice.current.userInterfaceIdiom
    }
    var body: some View {
        if idiom == .pad{
            //Text("Hello iPad").background(.blue)
            TabletView()
        }else{
            //Text("Hello iphone!").background(.red)
            PhoneView()
        }
        
    }
}

struct HomeView_previews: PreviewProvider {
    static var previews: some View{
        HomeView()
            .previewDevice(PreviewDevice(rawValue: "iphone 14"))
            .previewDisplayName("iphone 14")
        HomeView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
            .previewDisplayName("iPad Pro")
    }
    
}
