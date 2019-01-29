//
//  PostCell.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postBody: UITextView!
    
    func configure(withPost : Post) {
        postTitle.text = withPost.title
        postBody.text = withPost.body
    }

}

