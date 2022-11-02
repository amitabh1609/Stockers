//
//  File.swift
//  
//
//  Created by Amitabh Choudhury on 15/10/22.
//

import Foundation

public struct ErrorResponse: Decodable {
    public let code: String
    public let description: String
    
    public init(code: String, description: String) {
        self.code = code
        self.description = description
    }
}
