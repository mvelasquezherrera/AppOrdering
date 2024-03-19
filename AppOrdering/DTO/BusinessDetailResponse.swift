//
//  BusinessDetailResponse.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 18/03/24.
//

import Foundation

// MARK: - BusinessDetailResponse
struct BusinessDetailResponse: Codable {
    let error: Bool
    let result: BusinessDetailResult
}
