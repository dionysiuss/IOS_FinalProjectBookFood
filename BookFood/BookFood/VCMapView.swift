//
//  VCMapView.swift
//  BookFood
//
//  Created by JohnLiu on 2017/6/18.
//  Copyright © 2017年 teamFour. All rights reserved.
//

import Foundation
import MapKit
extension ViewController: MKMapViewDelegate {
    // 1
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        if let annotation = annotation as? RestaurantMapData {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
                as? MKPinAnnotationView { // 2
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type: UIButtonType.detailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
}
