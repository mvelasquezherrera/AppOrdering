//
//  BusinessResponse.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

// MARK: - BusisnessResponse
struct BusisnessResponse: Codable {
    let error: Bool
    let result: [Business]
}
