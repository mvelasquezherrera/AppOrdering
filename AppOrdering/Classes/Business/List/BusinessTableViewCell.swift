//
//  BusinessTableViewCell.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import UIKit

class BusinessTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var imgLogo: UIImageView!
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var imgFavorite: UIImageView!
    @IBOutlet private weak var viewOpenOrClose: UIView!
    @IBOutlet private weak var lblOpenOrClose: UILabel!
    @IBOutlet private weak var lblSchedule: UILabel!
    @IBOutlet private weak var lblDelivery: UILabel!
    
    static let identifier = "BusinessTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "BusinessTableViewCell", bundle: nil)
    }
    
    func updateData(_ business: Business) {
        
        if let url = URL(string: business.logo ?? "") {
            Utils.downloadImage(url: url) { [weak self] imagen in
                if let downloadImage = imagen {
                    DispatchQueue.main.async {
                        self?.imgLogo.image = downloadImage
                    }
                } else {
                    print("Error al descargar la imagen desde la URL: \(url)")
                }
            }
        }
        
        lblTitle.text = business.name
        lblTitle.font = UIFont.boldSystemFont(ofSize: 16)
        lblTitle.numberOfLines = 0
        imgFavorite.image = UIImage(systemName: (business.favorite ?? false) ? "star.fill" : "star")
        imgFavorite.tintColor = UIColor.systemYellow
        viewOpenOrClose.backgroundColor = (business.resultOpen ?? false) ? UIColor.systemGreen : UIColor.red
        viewOpenOrClose.layer.cornerRadius = 8
        lblOpenOrClose.text = (business.resultOpen ?? false) ? "Abierto" : "Cerrado"
        lblOpenOrClose.font = UIFont.systemFont(ofSize: 14)
        lblOpenOrClose.textColor = UIColor.white
        let hourOpen = business.today?.lapses[0]?.lapseOpen?.hour ?? 0
        let minuteOpen = business.today?.lapses[0]?.lapseOpen?.minute ?? 0
        let hourClose = business.today?.lapses[0]?.close?.hour ?? 0
        let minuteClose = business.today?.lapses[0]?.close?.minute ?? 0
        let open = Utils.formatearHora(hora: hourOpen, minuto: minuteOpen) ?? ""
        let close = Utils.formatearHora(hora: hourClose, minuto: minuteClose) ?? ""
        let scheduleComplete = "\(String(describing: open))hrs - \(String(describing: close))hrs"
        
        let startAttributed = NSMutableAttributedString(string: "Horario: ", attributes: [
            .font : UIFont.systemFont(ofSize: 14)
        ])
        let endAttributed = NSMutableAttributedString(string: scheduleComplete, attributes: [
            .font : UIFont.boldSystemFont(ofSize: 14)
        ])
        startAttributed.append(endAttributed)
        lblSchedule.attributedText = startAttributed
        lblDelivery.isHidden = business.deliveryPrice == nil
        lblDelivery.text = (business.deliveryPrice == 0) ? "Envío gratis" : "$\(String(describing: business.deliveryPrice))"
        lblDelivery.font = (business.deliveryPrice == 0) ? UIFont.boldSystemFont(ofSize: 14) : UIFont.systemFont(ofSize: 14)
        lblDelivery.textColor = (business.deliveryPrice == 0) ? UIColor.systemGreen : UIColor.black
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
}


extension BusinessTableViewCell {
    
    class func createCell(_ tableView: UITableView, indexPath: IndexPath, business: Business) -> BusinessTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath) as? BusinessTableViewCell
        cell?.updateData(business)

        return cell ?? BusinessTableViewCell()
    }
}
