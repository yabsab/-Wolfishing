//
//  ViewController.swift
//  -Wolfishing
//
//  Created by bjlee on 2017. 5. 11..
//  Copyright © 2017년 JY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goMap(_ sender: Any) {
        
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc:UIViewController = storyboard.instantiateViewController(withIdentifier: "MainTabView") as UIViewController
        
        present(vc, animated: false, completion: nil)
        

        
        
    }
    
}

