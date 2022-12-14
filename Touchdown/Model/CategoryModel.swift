//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Smetana, Ryan on 12/13/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
