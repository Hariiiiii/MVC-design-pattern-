//
//  PostNetworking.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import Foundation

class PostNetworking {
    private init() {}
    
    static func getPosts(completion: @escaping (GetPostsResponse)->Void){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else{return}
        NetworkingService.shared.getData(fromURL: url) { (json) in
            do{
                let response = try  GetPostsResponse(json: json)
                completion(response)
            } catch{}
        }
    }
}
