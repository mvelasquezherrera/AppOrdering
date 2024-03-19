//
//  ListBusinessSimpleAdapter.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import UIKit

class ListBusinessSimpleAdapter: NSObject, ListBusinessAdapter {
    
    private unowned let controller: BusinessViewProtocol
    var arrayData = [Any]()
    
    init(controller: BusinessViewProtocol) {
        self.controller = controller
    }
    
    func setTableView(_ tableView: UITableView) {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BusinessTableViewCell.nib(), forCellReuseIdentifier: BusinessTableViewCell.identifier)
        tableView.register(SearchErrorTableViewCell.nib(), forCellReuseIdentifier: SearchErrorTableViewCell.identifier)
    }
}

extension ListBusinessSimpleAdapter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = self.arrayData[indexPath.row]
        
        if let business = item as? Business {
            return BusinessTableViewCell.createCell(tableView, indexPath: indexPath, business: business)
        } else if let errorMessage = item as? String {
            return SearchErrorTableViewCell.createCell(tableView, indexPath: indexPath, errorMessage: errorMessage)
        } else {
            return UITableViewCell()
        }
    }
}

extension ListBusinessSimpleAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let business = self.arrayData[indexPath.row] as? Business {
            self.controller.goToDetailBusiness(business)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch self.arrayData[indexPath.row] {
        case is Business:
            return UITableView.automaticDimension
        case is String:
            return tableView.frame.height
        default:
            return 0
        }
    }
}

