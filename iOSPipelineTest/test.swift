//
//  test.swift
//  iOSPipelineTest
//
//  Created by GaC on 13/01/2020.
//  Copyright © 2020 Test. All rights reserved.
//

import Foundation
import AlamofireImage
import Alamofire

class test {
    func foo() {
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
