//
//  PhotoMapViewController.swift
//  Photo Map
//
//  Created by Nicholas Aiwazian on 10/15/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit

class PhotoMapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var cameraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backgroundColor = UIColor.cyan
        navigationItem.title = "Map View";
        
        // Set up the camera button //
        cameraButton.layer.masksToBounds = true;
        cameraButton.layer.cornerRadius = 50;
        cameraButton.layer.borderWidth = 3
        cameraButton.backgroundColor = UIColor.clear;
        cameraButton.layer.borderColor = UIColor.white.cgColor;
        
        // Create an outlet for the MapView to set its initial visible region to San Francisco //
        let sfRegion = MKCoordinateRegionMake(CLLocationCoordinate2DMake(37.783333, -122.416667), MKCoordinateSpanMake(0.1, 0.1))
        mapView.setRegion(sfRegion, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
