//
//  BusinessViewProtocol.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

protocol BusinessViewProtocol: NSObjectProtocol {
    func reloadTableWithData(_ arrayData: [Any])
    func goToDetailBusiness(_ business: Business)
    func setupAdapters()
    func addPullToRefresh()
    func reloadSearchWithData(_ arrayData: [Business])
    func showLoading(_ isShow: Bool)
}
