//
//  BusinessDetailViewPresenter.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 18/03/24.
//

import Foundation

class BusinessDetailViewPresenter {
    
    private unowned let controller: BusinessDetailViewController
    private var business: BusinessDetailResponse?
    
    init(controller: BusinessDetailViewController) {
        self.controller = controller
    }
}

extension BusinessDetailViewPresenter {
    
    func didLoad() {
        self.controller.setupStyle()
        self.getDetail()
    }
    
}

extension BusinessDetailViewPresenter {
    
    private func getDetail() {
        
        let ws = BusinessService()
        
        self.controller.showLoading(true)
        ws.getDetailBusiness(self.controller.idBusiness) { result in
            switch result {
            case .success(let businessDetail):
                self.controller.showLoading(false)
                self.business = businessDetail
                self.controller.updateData(businessDetail.result)
            case .failure(_): break
            }
        }
    }
    
}
