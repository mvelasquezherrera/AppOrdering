//
//  SearchBusinessAdapter.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import UIKit

class SearchBusinessAdapter: NSObject {
    
    private unowned let controller: BusinessViewProtocol
    var arrayData = [Business]()
    
    init(controller: BusinessViewProtocol) {
        self.controller = controller
    }
    
    func setSearchBar(_ searchBar: UISearchBar) {
        searchBar.delegate = self
        searchBar.placeholder = "Search by name"
    }
    
}

extension SearchBusinessAdapter: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.count == 0 {
            
            let result = self.arrayData
            self.controller.reloadTableWithData(result)
            
        } else {
            
            let result = self.arrayData.filter { business in
                if let name = business.name {
                    return name.lowercased().contains(searchText.lowercased())
                } else {
                    return false
                }
            }
            
            let arrayUpdate: [Any] = result.count != 0 ? result : ["No se encontraron resultados para la búsqueda de:\n\n\(searchText)"]
            
            self.controller.reloadTableWithData(arrayUpdate)
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
}
