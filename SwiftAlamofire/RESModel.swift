//
//  RESModel.swift
//  SwiftAlamofire
//
//  Created by le tong on 2019/2/20.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit
import ObjectMapper


class RESModel: Mappable {
    var code: NSInteger?
    var res:[resModel]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        code <- map["code"]
        res  <- map["res"]
    }

}
class resModel: Mappable {
    var gid: NSInteger?
    var ghash: NSString?
    var title: NSString?
    var thumb: NSString?
    var questions:[questionModel]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        gid <- map["gid"]
        ghash <- map["ghash"]
        title <- map["title"]
        thumb <- map["thumb"]
        questions <- map["questions"]
    }
    
    
}
class questionModel: Mappable {
    var id: NSInteger?
    var title: NSString?
    var answer: NSString?
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        title <- map["title"]
        answer <- map["answer"]
    }
    
    
}


