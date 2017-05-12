//
//  ProfileView.swift
//  -Wolfishing
//
//  Created by bjlee on 2017. 5. 11..
//  Copyright © 2017년 JY. All rights reserved.
//

import UIKit

class ProfileView: UIViewController {

    
    
    @IBOutlet var collectionenvy: UICollectionView!

    var myPicture: [String] = ["image1.png","image2.png","image3.png","image4.png","image5.png","image6.png","image7.png","image1.png","image2.png","image3.png","image4.png","image5.png","image6.png","image7.png"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        

        navigationController?.navigationBar.barTintColor = UIColor.blue

        
        func HearderMyProfileDelegate (_ view: UIView){
            
            
            print("test")
        }
        
        
        
        
        
        }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
}

extension ProfileView: UICollectionViewDataSource, UICollectionViewDelegate, HearderMyProfileDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPicture.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: mypictureViewCell.idendifier, for: indexPath) as! mypictureViewCell
        
        
        cell.profileImageView.image = UIImage.init(named: myPicture[indexPath.row])
        
        
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: "customHeader",
                                                                         for: indexPath) as! HearderMyProfile
        
        headerView.delegate = self
        
        headerView.lbFishingstic.text  = "test"
        headerView.lbFishingline.text  = "wow1"
        headerView.lbFishingreel.text  = "wow2"
        headerView.lbFishinglure.text  = "wow3"
        
        
        return headerView
        
        
    }
    
    func btClickHearderMyProfile(_ view: UIView) {
        
        
      let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc:UIViewController = storyboard.instantiateViewController(withIdentifier: "VCprofileChange") as UIViewController
        present(vc, animated: true, completion : nil)
        
        
        
        
    }
    
    
}






extension ProfileView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let margin: CGFloat = 1.0
        
        let size = self.collectionenvy.frame.size.width / 3.0 - margin
        
        return CGSize.init(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: self.collectionenvy.frame.size.width, height:180)
    }
    
}


