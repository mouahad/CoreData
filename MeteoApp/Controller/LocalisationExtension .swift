//
//  LocalisationExtension .swift
//  MeteoApp
//
//  Created by MYD on 28/08/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit
import MapKit

extension MeteoController: CLLocationManagerDelegate {
    
    func MiseEnPlace(){
        localisationManager = CLLocationManager()
        localisationManager?.delegate = self
        localisationManager?.requestAlwaysAuthorization()
        localisationManager?.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.count > 0 else { return }
        localisationManager?.stopUpdatingLocation()
        let positionActuelle = locations [0]
        let longitude = positionActuelle.coordinate.longitude
        let latitude = positionActuelle.coordinate.latitude
        print("Longitude: \(longitude) -> Latitude: \(latitude)")
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
}
