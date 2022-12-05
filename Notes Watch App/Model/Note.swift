//
//  Note.swift
//  Notes Watch App
//
//  Created by Smetana, Ryan on 12/5/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let txt: String
}
