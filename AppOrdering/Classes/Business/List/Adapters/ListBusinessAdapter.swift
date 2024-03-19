//
//  ListBusinessAdapter.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import UIKit

protocol ListBusinessAdapter {
    var arrayData: [Any] { get set }
    func setTableView(_ tableView: UITableView)
}
