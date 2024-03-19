//
//  SearchErrorTableViewCell.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import UIKit

class SearchErrorTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var lblErrorMessage: UILabel!
    
    static let identifier = "SearchErrorTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "SearchErrorTableViewCell", bundle: nil)
    }
    
    func updateData(_ errorMessage: String) {
        self.lblErrorMessage.text = errorMessage
        self.lblErrorMessage.numberOfLines = 0
        self.lblErrorMessage.textAlignment = .center
    }
}

extension SearchErrorTableViewCell {
    
    class func createCell(_ tableView: UITableView, indexPath: IndexPath, errorMessage: String) -> SearchErrorTableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchErrorTableViewCell", for: indexPath) as? SearchErrorTableViewCell
        cell?.updateData(errorMessage)
        return cell ?? SearchErrorTableViewCell()
    }
}
