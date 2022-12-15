//
//  Shop.swift
//  Touchdown
//
//  Created by Smetana, Ryan on 12/14/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
