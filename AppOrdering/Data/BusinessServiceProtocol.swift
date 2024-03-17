//
//  BusinessServiceProtocol.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

typealias BusinessHandler = (Result<BusisnessResponse, Error>) -> Void

protocol BusinessServiceProtocol {
    func fetchBusinesses(completion: @escaping BusinessHandler)
}

