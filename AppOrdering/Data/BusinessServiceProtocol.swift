//
//  BusinessServiceProtocol.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

typealias BusinessesHandler = (Result<BusisnessResponse, Error>) -> Void
typealias BusinessHandler = (Result<BusinessDetailResponse, Error>) -> Void

protocol BusinessServiceProtocol {
    func fetchBusinesses(completion: @escaping BusinessesHandler)
    func getDetailBusiness(_ idBusiness: Int, completion: @escaping BusinessHandler)
}

