//
//  helper.swift
//  function
//
//  Created by Nikhil Capsitech on 11/05/17.
//  Copyright © 2017 Nikhil Capsitech. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WebServices {
    
    func getAddressByLtLo(lat: Float, long: Float ) -> String {
        var address = String()
        let googleMapUrl =  "https://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=\(lat),\(long)"
        Alamofire.request(googleMapUrl).responseJSON
            { response in
                //debugPrint(response)
                
                switch(response.result) {
                case .success(_):
                    if let data = response.result.value {
                        let json = JSON(data)
                        if let add = json["results"][1]["formatted_address"].string {
                            address = add
                           print("add in webservices :  '\(address)'")
                        }
                    }
                case .failure(_):
                    print("Fail")
                }
        }
        return address
    }
}

