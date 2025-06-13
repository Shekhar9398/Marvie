//
//  ProductViewModel.swift
//  Marvie
//
//  Created by Shekhar Manwar on 13/06/25.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    
    private let urlString = "https://fakestoreapi.com/products"

    func fetchProducts() {
        NetworkManager.shared.fetchData(from: urlString, responseType: [Product].self) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let products):
                    self?.products = products
                    Logger.log("Products fetched")
                case .failure(let error):
                    Logger.log("Error while fetching products: \(error.localizedDescription)")
                }
            }
        }
    }
}
