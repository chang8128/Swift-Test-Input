//
//  ProductsView.swift
//  TestInput
//
//  Created by 常志平 on 28/11/22.
//
import Foundation
import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let title: String
}


let products = [
    Product(name: "English", title: "Books of original"),
    Product(name: "Chinese", title: "汉字起源书"),
    Product(name: "test", title: "This is only one")
]



struct ProductsView: View {
//    let products: [Product]
    
    @State private var showFavorited: Bool = false
    
    var body: some View {
        List {
            Button(
                action: { self.showFavorited.toggle() },
                label: { Text("Change filter") }
            )
//            ForEach(products) { item in
//                if !self.showFavorited || item.isFavorited {
//                    Text(item.title)
//                }
//
//            }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
