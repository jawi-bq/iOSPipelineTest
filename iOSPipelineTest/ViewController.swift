//
//  ViewController.swift
//  iOSPipelineTest
//
//  Created by GaC on 13/01/2020.
//  Copyright © 2020 Test. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Alamofire.request("https://httpbin.org/image/png").responseImage { response in
            debugPrint(response)

            print(response.request)
            print(response.response)
            debugPrint(response.result)

            if let image = response.result.value {
                print("image downloaded: \(image)")
            }
        }
    }


}

