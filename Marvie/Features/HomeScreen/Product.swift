//
//  ProductModel.swift
//  Marvie
//
//  Created by Shekhar Manwar on 13/06/25.
//

import Foundation

// MARK: - Product Model
struct Product: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
}

// MARK: - Rating Model
struct Rating: Codable, Hashable {
    let rate: Double
    let count: Int
}
