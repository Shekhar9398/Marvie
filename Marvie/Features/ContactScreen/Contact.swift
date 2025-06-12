//
//  Contact.swift
//  Marvie
//
//  Created by Shekhar Manwar on 12/06/25.
//

import Foundation

struct Contact: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
    let phone: String
}
