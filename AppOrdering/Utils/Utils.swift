//
//  Utils.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 18/03/24.
//

import UIKit

class Utils {

    static func formatearHora(hora: Int, minuto: Int) -> String? {
        
        var components = DateComponents()
        components.hour = hora
        components.minute = minuto
        
        if let date = Calendar.current.date(from: components) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            return formatter.string(from: date)
        } else {
            return nil
        }
        
    }
    
    static func downloadImage(url: URL, completion: @escaping (UIImage?) -> Void) {
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("Error al descargar la imagen: \(error)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No se recibieron datos de la imagen")
                completion(nil)
                return
            }
            
            if let imagen = UIImage(data: data) {
                completion(imagen)
            } else {
                print("No se pudo convertir los datos en una imagen")
                completion(nil)
            }
        }
        
        task.resume()
    }
    
    static func callPhone(number: String) {
        if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            print("No se pudo realizar la llamada.")
        }
    }
    
}
