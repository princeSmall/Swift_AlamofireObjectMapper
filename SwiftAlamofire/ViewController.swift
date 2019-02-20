//
//  ViewController.swift
//  SwiftAlamofire
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://58.211.36.116:8081/apph5/goods/hot-question"
        //        是否有参数: 没有只写urlString，有如下添加parameters：parameters
        let parameters: Dictionary = ["foo": "bar"]
        
        Alamofire.request(urlString, parameters: parameters).responseObject { (response: DataResponse<RESModel>) in
            let R = response.result.value
            print(R?.code ?? "")
            if let res = R?.res{
                for r in res{
                    print(r.ghash ?? "")
                }
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

