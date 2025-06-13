//
//  Logger.swift
//  Marvie
//
//  Created by Shekhar Manwar on 13/06/25.
//

import Foundation

class Logger {    
    private init() {}
    
    static func log(_ message: String) {
        print("🔹 \(message)")
    }
}
