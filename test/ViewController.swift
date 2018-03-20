//
//  ViewController.swift
//  test
//
//  Created by Timbology on 20/03/2018.
//  Copyright © 2018 Timbology. All rights reserved.
//

import UIKit
import GoogleMaps
import FirebaseDatabase

class ViewController: UIViewController {

    var dbReference: DatabaseReference?
    var dbHandle: DatabaseHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Lifebar"
        
//        dbReference = Database.database().reference()
//        dbReference?.child("shelter").childByAutoId().setValue("BCHA")
//        dbReference?.child("website").childByAutoId().setValue("bcha.org.uk")
//        dbReference?.child("address").childByAutoId().setValue("21 Christchurch Rd, Bournemouth BH1 3NS")
//        dbReference?.child("number").childByAutoId().setValue("01202 410500")
//        dbReference?.child("about").childByAutoId().setValue("BCHA has been helping people off the streets across the South of England for over 45 years. We help people by offering practical and emotional support, as well as providing people with a safe place to stay.")
//        dbReference?.child("target").childByAutoId().setValue("10")
        
    
        let camera = GMSCameraPosition.camera(withLatitude: 50.720806, longitude:-1.904755, zoom: 14)
        let mapView = GMSMapView.map(withFrame:.zero, camera: camera)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 50.720806, longitude: -1.904755)
        marker.snippet = "You are here"
        marker.appearAnimation = GMSMarkerAnimation.pop
        marker.map = mapView
        
        //mapView.mapType = kGMSTypeSatellite
        view = mapView
        
        
        //retrieve data
//        dbHandle = dbReference?.child("shelter").observe(.childAdded, with: { (snapshot) in
//
//           let shelter:String? = snapshot.value as? String
//           print(shelter)
//            })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

