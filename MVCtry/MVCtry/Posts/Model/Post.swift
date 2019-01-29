//
//  Post.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import Foundation

struct Post {
    let userId:Int?
    let id:Int?
    let title:String?
    let body:String?
    
    init?(dict:[String : Any]){
        guard let userId = dict["userId"] as? Int,
            let id = dict["id"] as? Int,
            let title = dict["title"] as? String,
            let body = dict["body"] as? String
            else {return nil}
        
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
