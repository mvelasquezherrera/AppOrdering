//
//  BusinessService.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

class BusinessService: BusinessServiceProtocol {
    
    func fetchBusinesses(completion: @escaping BusinessHandler) {
        guard let url = URL(string: Constants.API.baseURL + Constants.API.apiVersion + Constants.API.language + Constants.API.project + "/business?type=1&location=40.7539143,-73.9810162&params=zones,name,slug,header,logo,schedule") else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "accept")
        request.addValue(Constants.API.apiKey, forHTTPHeaderField: "x-api-key")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let businesses = try decoder.decode(BusisnessResponse.self, from: data)
                print("SUCCESS businesses: \(businesses)")
                completion(.success(businesses))
            } catch {
                print("ERROR businesses: \(error)")
                completion(.failure(error))
            }
        }.resume()
    }
    
}
