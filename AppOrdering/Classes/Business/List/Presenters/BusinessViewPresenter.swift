//
//  BusinessViewPresenter.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

struct BusinessViewPresenter {
    
    private unowned let controller: BusinessViewProtocol
    
    init(controller: BusinessViewProtocol) {
        self.controller = controller
    }
}

extension BusinessViewPresenter: BusinessViewPresenterProtocol {
    
    func didLoad() {
        self.controller.addPullToRefresh()
        self.controller.setupAdapters()
        self.getAllBusiness()
    }
    
    func pullToRefresh() {
        self.getAllBusiness()
    }
}

extension BusinessViewPresenter {
    
    private func getAllBusiness() {
        
        let ws = BusinessService()
        
        self.controller.showLoading(true)
        
        ws.fetchBusinesses { result in
            switch result {
            case .success(let arrayBusinesses):
                self.controller.showLoading(false)
                self.controller.reloadSearchWithData(arrayBusinesses.result)
                self.controller.reloadTableWithData(arrayBusinesses.result)
            case .failure(_): break
            }
        }
        
    }
}
