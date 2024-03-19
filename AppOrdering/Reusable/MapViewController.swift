//
//  MapViewController.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 19/03/24.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet private weak var mapView: MKMapView!
    
    var locationMap: LocationMap?
    
}

extension MapViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.title = "Map"
        self.mapView.delegate = self
        if let locationMap {
            updateData(locationMap)
        }
    }
    
}

extension MapViewController {
    
    func updateData(_ locationMap: LocationMap) {
        let location = CLLocationCoordinate2D(latitude: locationMap.latitude, longitude: locationMap.longitude)
        let region = MKCoordinateRegion(center: location, latitudinalMeters: CLLocationDistance(locationMap.zoom), longitudinalMeters: CLLocationDistance(locationMap.zoom))
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = locationMap.titlePin
        annotation.subtitle = locationMap.subtitlePin
        mapView.addAnnotation(annotation)
    }
    
}

extension MapViewController {
    
    class func buildMapView() -> MapViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyboard.instantiateViewController(withIdentifier: "MapViewController") as? MapViewController else {
            return MapViewController()
        }
        return controller
    }
}
