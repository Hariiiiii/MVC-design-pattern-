//
//  GetPostsResponse.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import Foundation


struct GetPostsResponse {
    
    let posts: [Post]
    
    init(json : Any) throws {
        guard let array = json as? [[String : Any]] else {
            throw NetworkingError.someError
        }
        var posts = [Post]()
        for item in array{
            guard let post = Post(dict: item) else {continue}
            posts.append(post)
        }
        self.posts = posts
    }
}
