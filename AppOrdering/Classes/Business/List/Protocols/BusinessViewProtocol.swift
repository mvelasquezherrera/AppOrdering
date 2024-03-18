//
//  BusinessViewProtocol.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import Foundation

protocol BusinessViewProtocol: NSObjectProtocol {
    func reloadTableWithData(_ arrayData: [Any])
    func setupAdapters()
    func addPullToRefresh()
    func showLoading(_ isShow: Bool)
}
