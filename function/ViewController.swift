//
//  ViewController.swift
//  function
//
//  Created by Nikhil Capsitech on 11/05/17.
//  Copyright © 2017 Nikhil Capsitech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webServices = WebServices()
        let address = webServices.getAddressByLtLo(lat: 32.0100, long: 77.3150)
        print(address)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

