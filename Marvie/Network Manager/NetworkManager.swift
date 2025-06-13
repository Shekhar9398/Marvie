//
//  NetworkManager.swift
//  Marvie
//
//  Created by Shekhar Manwar on 13/06/25.
//

//
//  NetworkManager.swift
//  Marvie
//
//  Created by Shekhar Manwar on 13/06/25.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case dataTaskFailed
    case noData
    case unableToDecode
}

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func fetchData<T: Decodable>(from urlStr: String, responseType: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: urlStr) else {
            completion(.failure(NetworkError.invalidURL))
            Logger.log("Invalid API Url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(NetworkError.dataTaskFailed))
                Logger.log("Datatask failed")
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                Logger.log("No Data in the response")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(responseType, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(NetworkError.unableToDecode))
                Logger.log("Error while decoding data")
            }
        }.resume()
    }
}
