//
//  MapView.swift
//  -Wolfishing
//
//  Created by bjlee on 2017. 5. 11..
//  Copyright © 2017년 JY. All rights reserved.
//

import UIKit
import CoreLocation



class MapView: UIViewController, MTMapViewDelegate,UINavigationBarDelegate,UITabBarControllerDelegate,CLLocationManagerDelegate {

    var viewMap = MTMapView()
    let locationManager = CLLocationManager()
    let accurary = MTMapLocationAccuracy()
      var items = [MTMapPOIItem]()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
      
        
        call_map()

        
        
        }
    
    

    func call_map() {
        
        let loc = locationManager.location?.coordinate
        let map_latitude = loc?.latitude
        let map_longitude = loc?.longitude
        var items = [MTMapPOIItem]()
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let mapViewController: MTMapView = MTMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        
        let centerPoint = MTMapPointGeo(latitude: map_latitude!, longitude: map_longitude!)
        
        print(centerPoint)
        mapViewController.setMapCenter(MTMapPoint.init(geoCoord: centerPoint), zoomLevel: 2, animated: true)
        
        mapViewController.daumMapApiKey = "9791136a724a172c95fc1728e00da61a"
        mapViewController.delegate = self
        mapViewController.baseMapType = .standard
        
       
     
        
        //이름
         navigationItem.title="포인트"
  
       items.append(fishing_Red_PoiItem(name: "하나", latitude: map_latitude!, longitude: map_longitude!))
        items.append(fishing_Red_PoiItem(name: "둘", latitude: 37.4987963, longitude: 127.0415946))
        items.append(fishing_Blue_PoiItem(name: "셋", latitude: 37.5025612, longitude: 127.0415946))
        items.append(fishing_Blue_PoiItem(name: "넷", latitude: 37.5037539, longitude: 127.0426469))
   
        
        
        mapViewController.addPOIItems(items)
        mapViewController.fitAreaToShowAllPOIItems()
        
        print("아이템 갯수 : ",items.count)
        
        self.view.addSubview(mapViewController)
    
    
    }
    
    
        //마커 포인트 표시
    func fishing_Red_PoiItem(name: String, latitude: Double, longitude: Double) -> MTMapPOIItem {
        let item = MTMapPOIItem()
       
        item.itemName = name
        item.markerType = .redPin
        item.markerSelectedType = .redPin
        
        item.mapPoint = MTMapPoint(geoCoord: .init(latitude: latitude, longitude: longitude))
        item.showAnimationType = .noAnimation
//        item.customImageAnchorPointOffset = .init(offsetX: 30, offsetY: 0)
        
        // 마커 위치 조정
        
        return item
    }

    
    
    //마커 포인트 표시
    func fishing_Blue_PoiItem(name: String, latitude: Double, longitude: Double) -> MTMapPOIItem {
        let item = MTMapPOIItem()
        item.itemName = name
        item.markerType = .bluePin
        item.markerSelectedType = .bluePin
        item.mapPoint = MTMapPoint(geoCoord: .init(latitude: latitude, longitude: longitude))
        item.showAnimationType = .noAnimation
//        item.customImageAnchorPointOffset = .init(offsetX: 30, offsetY: 0)
        
        // 마커 위치 조정
        
        return item
    }
    
    
   

    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


