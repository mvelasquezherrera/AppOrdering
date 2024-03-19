//
//  BusinessDetailViewController.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 18/03/24.
//

import UIKit

class BusinessDetailViewController: UIViewController {
    
    @IBOutlet private weak var scrollContent: UIScrollView!
    @IBOutlet private weak var imgBusinessBackground: UIImageView!
    @IBOutlet private weak var imgLogo: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var imgFavorite: UIImageView!
    @IBOutlet private weak var viewOpenClose: UIView!
    @IBOutlet private weak var lblOpenClose: UILabel!
    @IBOutlet private weak var imgAddress: UIImageView!
    @IBOutlet private weak var lblAddress: UILabel!
    @IBOutlet private weak var lblDeliveryPrice: UILabel!
    @IBOutlet private weak var lblDeliveryName: UILabel!
    @IBOutlet private weak var lblSchedule: UILabel!
    @IBOutlet private weak var btnPhone: UIButton!
    @IBOutlet private weak var btnCellphone: UIButton!
    
    private var presenter: BusinessDetailViewPresenter!
    var idBusiness: Int!
    var business: BusinessDetailResult!
}

extension BusinessDetailViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.presenter.didLoad()
    }
}

// MARK: - @IBAction
extension BusinessDetailViewController {
    
    @IBAction private func btnPhoneAction(_ sender: UIButton) {
        Utils.callPhone(number: business.phone ?? "")
    }
    
    @IBAction private func btnCellphoneAction(_ sender: UIButton) {
        Utils.callPhone(number: business.cellphone ?? "")
    }
}

extension BusinessDetailViewController {
    
    func backController() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func updateData(_ business: BusinessDetailResult) {
        self.business = business
        DispatchQueue.main.async {
            if let urlHeader = URL(string: business.header ?? "") {
                Utils.downloadImage(url: urlHeader) { [weak self] imagen in
                    if let downloadImage = imagen {
                        DispatchQueue.main.async {
                            self?.imgBusinessBackground.image = downloadImage
                        }
                    } else {
                        print("Error al descargar la imagen desde la URL: \(urlHeader)")
                    }
                }
            }
            
            if let urlLogo = URL(string: business.logo ?? "") {
                Utils.downloadImage(url: urlLogo) { [weak self] imagen in
                    if let downloadImage = imagen {
                        DispatchQueue.main.async {
                            self?.imgLogo.image = downloadImage
                        }
                    } else {
                        print("Error al descargar la imagen desde la URL: \(urlLogo)")
                    }
                }
            }
            
            self.lblName.text = business.name ?? ""
            self.imgFavorite.image = UIImage(systemName: (business.favorite ?? false) ? "star.fill" : "star")
            
            self.viewOpenClose.backgroundColor = (business.resultOpen ?? false) ? UIColor.systemGreen : UIColor.red
            self.lblOpenClose.text = (business.resultOpen ?? false) ? "Abierto" : "Cerrado"
            
            let hourOpen = business.today?.lapses[0]?.lapseOpen?.hour ?? 0
            let minuteOpen = business.today?.lapses[0]?.lapseOpen?.minute ?? 0
            let hourClose = business.today?.lapses[0]?.close?.hour ?? 0
            let minuteClose = business.today?.lapses[0]?.close?.minute ?? 0
            let open = Utils.formatearHora(hora: hourOpen, minuto: minuteOpen) ?? ""
            let close = Utils.formatearHora(hora: hourClose, minuto: minuteClose) ?? ""
            let scheduleComplete = "\(String(describing: open))hrs - \(String(describing: close))hrs"
            
            let startAttributed = NSMutableAttributedString(string: "Horario (Hoy): ", attributes: [
                .font : UIFont.systemFont(ofSize: 14)
            ])
            let endAttributed = NSMutableAttributedString(string: scheduleComplete, attributes: [
                .font : UIFont.boldSystemFont(ofSize: 14)
            ])
            startAttributed.append(endAttributed)
            self.lblSchedule.attributedText = startAttributed
            
            let addressAttributed = NSMutableAttributedString(string: business.address ?? "", attributes: [
                .font : UIFont.boldSystemFont(ofSize: 16),
                .underlineStyle : NSUnderlineStyle.single.rawValue
            ])
            
            self.lblAddress.attributedText = addressAttributed
            
            self.lblDeliveryPrice.isHidden = business.deliveryPrice == nil
            self.lblDeliveryPrice.text = (business.deliveryPrice == 0) ? "Envío gratis" : "$\(String(describing: business.deliveryPrice))"
            self.lblDeliveryPrice.font = (business.deliveryPrice == 0) ? UIFont.boldSystemFont(ofSize: 14) : UIFont.systemFont(ofSize: 14)
            self.lblDeliveryPrice.textColor = (business.deliveryPrice == 0) ? UIColor.systemGreen : UIColor.black
            
            self.lblDeliveryName.text = business.deliveryName ?? ""
            
            
            if let numberPhone = business.phone, !numberPhone.isEmpty {
                self.btnPhone.setTitle("Llamar a \(numberPhone)", for: .normal)
            }
            
            if let numberCellphone = business.cellphone, !numberCellphone.isEmpty {
                self.btnCellphone.setTitle("Llamar a \(numberCellphone)", for: .normal)
            }
            
        }
    }
    
    func setupStyle() {
        self.imgBusinessBackground.contentMode = .scaleAspectFill
        self.imgLogo.layer.cornerRadius = 50
        self.imgLogo.layer.borderWidth = 2
        self.imgLogo.layer.borderColor = UIColor.black.cgColor
        self.lblName.font = UIFont.boldSystemFont(ofSize: 24)
        self.imgFavorite.tintColor = UIColor.systemYellow
        self.viewOpenClose.layer.cornerRadius = 8
        self.lblOpenClose.font = UIFont.systemFont(ofSize: 14)
        self.lblOpenClose.textColor = UIColor.white
        self.imgAddress.image = UIImage(named: "imgLocation")
        self.lblDeliveryName.font = UIFont.systemFont(ofSize: 14)
        self.btnPhone.tintColor = UIColor.white
        self.btnPhone.backgroundColor = UIColor.systemBlue
        self.btnPhone.layer.cornerRadius = 8
        self.btnCellphone.tintColor = UIColor.white
        self.btnCellphone.backgroundColor = UIColor.systemGreen
        self.btnCellphone.layer.cornerRadius = 8
    }
    
    func showLoading(_ isLoading: Bool) {
        DispatchQueue.main.async {
            self.scrollContent.isHidden = isLoading
        }
    }
}

extension BusinessDetailViewController {
    
    class func buildWithIdBusiness(_ idBusiness: Int) -> BusinessDetailViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: "BusinessDetailViewController") as? BusinessDetailViewController else {
            return BusinessDetailViewController()
        }
        controller.presenter = BusinessDetailViewPresenter(controller: controller)
        controller.idBusiness = idBusiness
        return controller
    }
}
