//
//  GetSetAPI.swift
//  rebrickit
//
//  Created by iosDevMacbookPro on 15/10/26.
//  Copyright © 2015年 doluvor. All rights reserved.
//

import Foundation
import Alamofire

class GetSetAPI {
    
    func request() {
        Alamofire.request(.GET, "http://rebrickable.com/api/get_set", parameters: ["key" : "a3E4kPrYZ6", "format" : "json", "set_id" : "42029-1"]).responseJSON {
            response in
            //print(response.request)
            //print(response.response)
            //print(response.data)
            //print(response.result)
            
            if let JSON = response.result.value {
                print("\(JSON)")
            }
        }
    }
}
